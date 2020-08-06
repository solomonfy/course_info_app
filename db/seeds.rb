# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all

10.times do
    Course.create(title: Faker::Educator.course_name, description: Faker::Educator.degree, credit_hr: rand(1...4.0).round(2), start_date: Faker::Date.between(from: '2020-09-23', to: '2020-09-25'), month_duration: rand(3...6))
end