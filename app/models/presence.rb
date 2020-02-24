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

  validate :datetime_checkin
  validate :datetime_checkout, on: :update

  # TODO: Fixme
  def datetime_checkin
    if !self.student.presences.empty? && self.student.presences.last.checkin < Date.today
      errors.add(:checkin, "is invalid")
    end
  end

  # TODO: Fixme
  def datetime_checkout
    if checkout < checkin
      errors.add(:checkout, "is invalid")
    end
  end
end
