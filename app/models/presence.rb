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

  @Presence = Presence.new
end
