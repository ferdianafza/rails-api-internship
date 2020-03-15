class ReportPdf < Prawn::Document
	def initialize(report)
		super()
		@report = report
		report_subject
		report_content
	end

	def report_subject
		text "Subject : #{@report.subject}", size: 30, style: :bold
	end

	def report_content
		content = ActionView::Base.full_sanitizer.sanitize(@report.rich_text_content.to_s)
		text "Content : #{content}", size: 30, style: :bold
	end
end