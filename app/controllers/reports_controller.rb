class ReportsController < ApplicationController
    before_action :authenticate_student!, except: [:show]
    before_action :set_report, only: [:show, :edit, :update]

  def index
    @reports = current_student.reports.order(created_at: :desc).page params[:page]
  end

  def new
    @report = current_student.reports.new
  end

  def show; end

  def create
    @report = current_student.reports.new(report_params)

    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: 'Report was successfully created.' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:subject, :content, :document)
    end

end
