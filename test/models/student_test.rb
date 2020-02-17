# == Schema Information
#
# Table name: students
#
#  id                     :integer          not null, primary key
#  address                :string
#  city                   :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  firstname              :string
#  lastname               :string
#  nis                    :string
#  periode                :string
#  phone                  :string
#  province               :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  school                 :string
#  status                 :string
#  zipcode                :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  major_id               :integer
#
# Indexes
#
#  index_students_on_email                 (email) UNIQUE
#  index_students_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
