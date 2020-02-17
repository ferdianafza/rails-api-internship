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

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


majors = %w(Rekayasa\ Perangkat\ Lunak\ (RPL) Multimedia Teknik\ Komputer\ Jaringan\ (TKJ))

for major in majors
  Major.create!(name: major)
end

provinces = %w(Aceh Bengkulu Jambi Kepulauan\ Bangka\ Belitung Kepulauan\ Lampung Riau  Sumatra\ Barat Sumatra\ Selatan Sumatra\ Utara Banten Gorontalo Jakarta Jawa\ Barat Jawa\ Tengah Jawa\ Timur Kalimantan\ Barat Kalimantan\ Selatan Kalimantan\ Tengah Kalimantan\ Timur Kalimantan\ Utara Maluku Maluku\ Utara Bali Nusa\ Tenggara\ Barat Nusa\ Tenggara\ Timur Papua Papua\ Barat Sulawesi\ Barat Sulawesi\ Selatan  Sulawesi\ Tengah Sulawesi\ Tenggara Sulawesi\ Utara Yogyakarta)

for province in provinces
	Province.create!(name: province)
end

student1 = {
              email: Faker::Internet.email, 
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
              zipcode: Faker::Address.zip,
              father_name: Faker::Name.name,
              mother_name: Faker::Name.name,
              major_id: rand(1..majors.size),
              province_id: rand(1..provinces.size)
            }

student = Student.new(student)
student.avatar.attach(io: File.open("#{Rails.root}/app/assets/images/avatar.png"), filename: 'avatar.png')
student.save!

student2 = {
              email: Faker::Internet.email, 
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
              zipcode: Faker::Address.zip,
              father_name: Faker::Name.name,
              mother_name: Faker::Name.name,
              major_id: rand(1..majors.size),
              province_id: rand(1..provinces.size)
            }

student = Student.new(student2)
student.avatar.attach(io: File.open("#{Rails.root}/app/assets/images/avatar.png"), filename: 'avatar.png')
student.save!

student_all = Student.all
Presence.create(
  checkin: Faker::Time.between(from: DateTime.yesterday, to: DateTime.now, format: :default),
  checkout: Faker::Time.between(from: DateTime.yesterday, to: DateTime.now, format: :default),
  student_id: rand(1..student_all.count)
  )