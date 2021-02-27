# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ["Vegetable", "Fruits", "Herb", "Seeds", "Homemdade Relish", "Others"]
measurements = ["kg", "g", "pcs", "packs"]

if Category.count == 0
   categories.each do |category|
       Category.create(name: category)
       puts "created #{category} category"
   end
end

if Measurement.count == 0
   measurements.each do |measurement|
       Measurement.create(name: measurement)
       puts "created #{measurement} measurement"
   end
end

if User.count == 0
    User.create(email: "test@test.com", password: "111111", password_confirmation: "111111")
end
