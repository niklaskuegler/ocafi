# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Coffee.delete_all

puts "Everything should be deleted:  #{Coffee.all.length} Coffees "

Coffee.create! id:1, bags: 40, process: "Natural", year: "2018", flavor1: "Chocolate", flavor2: "Vanilla", flavor3: "Caramell", farmer_id: 1

puts "Everything should be created:  #{Coffee.all.length} Coffees "


Farmer.delete_all

puts "Everything should be deleted:  #{Coffee.all.length} Farmers "

Farmer.create! id:1, farm_name: "Fazenda Matao", first_name: "Luis", last_name: "Guardabaxo"

puts "Everything should be created:  #{Farmer.all.length} Farmers "



OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

puts "Everything should be created: #{OrderStatus.all.length} OrderStatuses"


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


