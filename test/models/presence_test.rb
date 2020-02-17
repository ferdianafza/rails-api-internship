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

require 'test_helper'

class PresenceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
