class Api::V1::PresencesController < ApplicationController
    before_action :authenticate_api_v1_student!, only: [:new]
    before_action :authenticate_api_v1_student!, except: [:show]
    before_action :set_checkout, only: [:show, :checkout, :update]
    before_action :set_student, only: [:index, :new]
    before_action :set_presence, only: [:update, :show]

    def index
      @presences = current_api_v1_student.presences
                                    .order(created_at: :desc)
                                    .page params[:page]
      @presences_all = current_api_v1_student.presences
                                    .order(created_at: :desc)
      respond_to do |format|
        totalpresences = @presences_all.count.to_f
        pageCount = (totalpresences / 5.to_f).ceil
        format.json { render json: { presences: @presences, meta: { totalPage: pageCount, totalPrenseces: @presences_all.count } } }
        format.csv { send_data @presences.to_csv }
        format.xls  { send_data @presences.to_csv(col_sep: "\t") }
        format.pdf do
          pdf = PresencesPdf.new(@presences)
          send_data pdf.render,
              filename: "My Presences.pdf"
        end
      end
    end

    # def new
    #   @presence = current_api_v1_student.presences.new
    # end

    def edit; end

    def show
      @presence = Presence.find(params[:id])
      respond_to do |format|
        format.json { render json: @presence }
      end
    end

    def checkout; end

    def update
      @presence = Presence.find(params[:id])
      respond_to do |format|
        if @presence.update(presence_params)
          # format.html { redirect_to "/", notice: 'Goodbye, be careful.' }
          format.json { render json: :@presence }
        else
          # format.html { render :edit }
          format.json { render json: @presence.errors, status: :unprocessable_entity }
        end
      end
    end

    def create
      @presence = current_api_v1_student.presences.new(presence_params)

      # respond_to do |format|
        if @presence.save
          # format.html { redirect_to "/", notice: 'Welcome to 41studio, have a good work.' }
          # format.json { render :show, status: :created }
          render json: @presence
        else
          # format.html { render :new }
          # format.json { render json: @presence.errors, status: :unprocessable_entity }
          render json: @presence.errors
        end
      # end
    end

    private

      def set_student
        @student = current_api_v1_student
      end

      def set_presence
        @presence = Presence.find(params[:id])
      end

      def presence_params
        params.require(:presence).permit(:checkin, :checkout, :student_id)
      end

      def set_checkout
        @presence_to_update = current_api_v1_student.presences.last
      end

      def presence_checkout
        params.require(:presence).permit(:checkout)
      end

end

