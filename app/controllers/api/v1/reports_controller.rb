class Api::V1::ReportsController < ApplicationController
    before_action :authenticate_api_v1_student!, except: [:show]
    before_action :set_report, only: [:show, :edit, :update]

  def index
    @reports = current_api_v1_student.reports
                                .order(created_at: :desc)
                                # .page params[:page]
    # respond_to do |format|
    #   format.html
    #   format.json
    totalreports = @reports.count.to_f
    pageCount = (totalreports / 5.to_f).ceil
    # render json: @reports
    render json: { reports: @reports, meta: { totalPage: pageCount, totalReports: @reports.count } }
      # format.csv { send_data @reports.to_csv }
      # format.xls  { send_data @reports.to_csv(col_sep: "\t") }
    # end
  end

  def new
    @report = current_api_v1_student.reports.new
  end

  def show
    # respond_to do |format|
    #   format.html
      # format.json { render   json: @report }
      render json: @report, status: :hello
    #   format.pdf do
    #     pdf = ReportPdf.new(@report)
    #     send_data pdf.render,
    #         filename: "#{@report.subject}.pdf"
    #   end
    # end
  end

  def create
    @report = current_api_v1_student.reports.new(report_params)

    # respond_to do |format|
      if @report.save
        # format.html { redirect_to @report, notice: 'Report was successfully created.' }
        # format.json { render :show, status: :created, location: @report }
        render json: @report
      else
        # format.html { render :new }
        # format.json { render json: @report.errors, status: :unprocessable_entity }
        render json: @report.errors, status: :unprocessable_entity
      end
    # end
  end

  private

    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:subject, :content, :document, :student_id)
    end

end
