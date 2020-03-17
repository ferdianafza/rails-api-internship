class Api::V1::HomesController < ApplicationController
    # before_action :authenticate_student!
    before_action :authenticate_api_v1_student!
    before_action :set_checkout, only: [:index, :checkout, :update]

    REPORT_LIMIT = 6

    def index
      @reports = current_api_v1_student.reports
                                .order(created_at: :desc)
                                .limit(REPORT_LIMIT)

      @presences_students = current_api_v1_student.presences
                                            .order(created_at: :desc)
                                            .limit(REPORT_LIMIT)
      @student_last_presences_checkin = current_api_v1_student.presences
                                                        .last
                                                        .checkin
                                                        .to_date rescue Date.yesterday
      @student_last_presences_checkout = current_api_v1_student.presences
                                                          .last
                                                          .checkout rescue Date.yesterday
      @presence = current_api_v1_student.presences.new
      @presence_to_update = current_api_v1_student.presences.last
      render json: @presences_students
      # render json: @reports
    end

    def new
      @presence = current_api_v1_student.presences.new
    end

    def myprofile
      render json: current_api_v1_student
    end

    def friendlist
      @friend_lists = Student.all
    end

    private

      def presence_params
        params.require(:presence).permit(:checkin, :checkout)
      end

      def set_checkout
        @presence_to_update = current_api_v1_student.presences.last
      end

end
