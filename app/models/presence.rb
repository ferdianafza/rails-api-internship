# == Schema Information
#
# Table name: presences
#
#  id         :integer          not null, primary key
#  checkin    :datetime
#  checkout   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  student_id :integer
#

class Presence < ApplicationRecord
  belongs_to :student

  # validate :datetime_checkin
  # validate :datetime_checkout, on: :update

  # def datetime_checkin
  #   if !self.student.presences.empty? && self.student.presences.last.checkin < Date.today
  #     errors.add(:checkin, "is invalid")
  #   end
  # end

  # def datetime_checkout
  #   if checkout < checkin
  #     errors.add(:checkout, "is invalid")
  #   end
  # end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |presence|
        csv << presence.attributes.values_at(*column_names)
      end
    end
  end

end
