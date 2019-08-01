# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# La gem faker permet de fabriquer de fausses infos pour vérifier que la base de données se remplit correctement.
require 'faker'

10.times do
  doctor = Doctor.create(first_name: Faker::Name.unique.first_name,last_name: Faker::Name.unique.last_name,specialty:'Dentist', postal_code: rand(10000..80000))
end

30.times do
  patient = Patient.create(first_name: Faker::Name.unique.first_name,last_name: Faker::Name.unique.last_name)
end

20.times do
appointment = Appointment.create(doctor_id: rand(0..9), patient_id: rand(0..29), date: Faker::Date.between(2.days.ago, Date.today))
end
