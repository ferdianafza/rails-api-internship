class HomesController < ApplicationController
    before_action :authenticate_student!
    before_action :set_checkout, only: [:index, :checkout, :update]

    def index
      @reports = current_student.reports.order(created_at: :desc).limit(6)
      @presences_students = current_student.presences.order(created_at: :desc).limit(6)
      @student_last_presences_checkin = current_student.presences.last.checkin.to_date rescue Date.yesterday
      @student_last_presences_checkout = current_student.presences.last.checkout rescue Date.yesterday
      @presence = current_student.presences.new
      @presence_to_update = current_student.presences.last
    end

    def new
      @presence = current_student.presences.new
    end

    def myprofile
    end

    # def update
    #   respond_to do |format|
    #     if @presence_to_update.update(presence_params)
    #       format.html { redirect_to "/", notice: 'Checkout was successfully updated.' }
    #       format.json { render :show, status: :ok, location: @presence }
    #     else
    #       format.html { render :edit }
    #       format.json { render json: @presence.errors, status: :unprocessable_entity }
    #     end
    #   end
    # end

    # def create
    #   if current_student.presences.empty? || current_student.presences.last.checkin.to_date != Date.today
    #       @presence = current_student.presences.new(presence_params)
    #       respond_to do |format|
    #         if @presence.save
    #           format.html { redirect_to "/", notice: 'Checkin was successfully created.' }
    #           format.json { render :show, status: :created, location: @presence }
    #         else
    #           format.html { render :new }
    #           format.json { render json: @presence.errors, status: :unprocessable_entity }
    #         end
    #       end
    #     else
    #       respond_to do |format|
    #       format.html { redirect_to "/presences", notice: 'You already checked in.' }
    #     end
    #   end
    # end

    private

    def presence_params
      params.require(:presence).permit(:checkin, :checkout)
    end

    def set_checkout
      @presence_to_update = current_student.presences.last
    end

end
