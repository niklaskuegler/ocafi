# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Farmer.delete_all

puts "Everything should be deleted:  #{Farmer.all.length} Farmers "

#Farmer.create(
#  first_name: "Marco",
#  last_name: "Guardabaxo",
#  origin: "Brazil",
#  region: "Mogiana",
#  farm_name: "Mattao",
#)

#Farmer.create(
#  first_name: "Jorge",
#  last_name: "Alina",
#  origin: "Brazil",
#  region: "Mogiana",
#  farm_name: "Santa Alina",
#)

#Farmer.create(
#  first_name: "Paulo",
#  last_name: "Aliança",
#  origin: "Brazil",
#  region: "Mogiana",
#  farm_name: "Aliança",
#)

puts "Everything should be created:  #{Farmer.all.length} Farmers "
