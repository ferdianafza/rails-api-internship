class ReportPdf < Prawn::Document
	def initialize(report)
		super()
		@report = report
		report_subject
		report_content
	end

	def report_subject
		text "subject : #{@report.subject}", size: 30, style: :bold
	end

	def report_content
		text "content : #{@report.rich_text_content.to_s}", size: 30, style: :bold
	end
end