# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  subject    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  student_id :integer
#

class Report < ApplicationRecord
  belongs_to :student
  has_rich_text :content
  has_one_attached :document

  validates :content, :subject, presence: true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names.push("content")
      all.each do |report|
        tmp = report.attributes.values_at(*column_names)
        str = ActionView::Base.full_sanitizer.sanitize(report.content.to_s)
        tmp.push(str)
        csv << tmp
      end
    end
  end

end
