# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star War}, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: "Sante")
Category.create(name: "Ecole")
Category.create(name: "Transport")
Category.create(name: "Travail")
Category.create(name: "Familial")
Category.create(name: "Conjugal")
Category.create(name: "Commerce")
Category.create(name: "En public")
Category.create(name: "Autre")

puts "category ok"