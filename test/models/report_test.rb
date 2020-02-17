# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  content    :string
#  subject    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  student_id :integer
#

require 'test_helper'

class ReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
