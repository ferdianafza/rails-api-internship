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

class Student < ApplicationRecord
  has_many :reports
  has_many :presences
  has_one_attached :avatar

  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode
  after_validation :reverse_geocode

  belongs_to :major
  belongs_to :province
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,  :recoverable,  :omniauthable,  :rememberable, :validatable

  validates :email, presence: true

  def password_required?
	 false
  end

  def full_name
  	"#{firstname} #{lastname}"
  end

end
