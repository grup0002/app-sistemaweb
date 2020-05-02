# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "Admin1@sme.com", nombre: "Edgar")
User.create(email: "Admin2@sme.com", nombre: "Maribel")
User.create(email: "Admin3@sme.com", nombre: "Maria")


10.times do |i|
    User.create(email: "user#{i}@sme.com", nombre: "Elton #{rand(61)}")
  end