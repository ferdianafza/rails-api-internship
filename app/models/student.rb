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
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,  :recoverable,  :omniauthable,  :rememberable, :validatable

  has_many :reports
  has_many :presences
  has_one_attached :avatar

  belongs_to :major
  belongs_to :province

  validates :email, :firstname, :lastname, :school, :nis, :major, :status,
            :phone, :mother_name, :father_name, :emergency_number, :address,
            :latitude, :longitude, :city, :province, :zipcode, :start_date, :end_date, presence: true

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i } 
  validates :phone, :emergency_number, format: { with: /\+?([ -]?\d+)+|\(\d+\)([ -]\d+)/ } 

  validates :nis, length: { minimum: 5, maximum: 15 }
  validates :zipcode, length: { minimum: 5, maximum: 7 }
  validates :latitude, :longitude, :zipcode, numericality: true

  def password_required?
    false
  end

  def full_name
  	"#{firstname} #{lastname}"
  end

end
