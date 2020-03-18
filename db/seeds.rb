# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.delete_all
Province.delete_all
Major.delete_all
Student.delete_all
Presence.delete_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

majors = %w(Rekayasa\ Perangkat\ Lunak\ (RPL) Multimedia Teknik\ Komputer\ Jaringan\ (TKJ))

for major in majors
  Major.create!(name: major)
end

provinces = %w(Aceh Bengkulu Jambi Kepulauan\ Bangka\ Belitung Kepulauan\ Lampung Riau  Sumatra\ Barat Sumatra\ Selatan Sumatra\ Utara Banten Gorontalo Jakarta Jawa\ Barat Jawa\ Tengah Jawa\ Timur Kalimantan\ Barat Kalimantan\ Selatan Kalimantan\ Tengah Kalimantan\ Timur Kalimantan\ Utara Maluku Maluku\ Utara Bali Nusa\ Tenggara\ Barat Nusa\ Tenggara\ Timur Papua Papua\ Barat Sulawesi\ Barat Sulawesi\ Selatan  Sulawesi\ Tengah Sulawesi\ Tenggara Sulawesi\ Utara Yogyakarta)

for province in provinces
	Province.create!(name: province)
end

data = {
        email: "user1@gmail.com",
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        password: "password",
        password_confirmation: "password",
        nis: Faker::Number.number(digits: 6),
        phone: Faker::PhoneNumber.cell_phone,
        status: true,
        school: Faker::Company.name,
        address: Faker::Address.street_address,
        city: Faker::Address.city,
        zipcode: Faker::Address.zip[0..4],
        father_name: Faker::Name.name,
        mother_name: Faker::Name.name,
        major_id: Major.pluck(:id).sample,
        province_id: Province.pluck(:id).sample,
        latitude: 1.0,
        longitude: 1.0,
        emergency_number: 1.0,
        start_date: 1.month.ago,
        end_date: 3.weeks.ago
        }

student = Student.new(data)
student.avatar.attach(io: File.open("#{Rails.root}/app/assets/images/avatar.png"), filename: 'avatar.png')
student.save!

date = Time.zone.yesterday
checkin = Time.zone.local(date.year, date.month, date.day, 8, 0, 0).in_time_zone
checkout = Time.zone.local(date.year, date.month, date.day, 7, 0, 0).in_time_zone

checkin_time = Presence.create!(checkin: checkin, student_id: "#{Student.first.id}")
checkout_time = checkin_time.update_attribute(:checkout, checkout)