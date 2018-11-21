# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

Coffee.delete_all

Farmer.delete_all

OrderItem.destroy_all

Order.destroy_all

puts "Everything should be deleted:  #{Coffee.all.length} Farmers "

#Farmer.create! id:1, farm_name: "Fazenda Matao", first_name: "Luis", last_name: "Guardabaxo", origin: "San Jose do Rio Pardo", region: "Mogiana"

puts "Everything should be created:  #{Farmer.all.length} Farmers "


#Coffee.create! name: "Alianca", bags: 38, process: "Natural", certification: "UTZ", year: "2018", sku: "LPO-1001", farmer_id: 1, price: 6.30, price2: 5.90, packaging: "60 KG", sample_packaging: "400 gr", batch: "4572", score: "85", variety: "Catuai", screensize: "16+", flavor1: "Chocolate", flavor2: "Vanilla", flavor3: "Caramell", cup_description: "Very aromatic coffee. Fruity, citrus and tropical
#notes. Light body and vibrant acidity. Delicate, clean and complex sweetness.", active: true
#Coffee.create! name: "Santa Alina", bags: 42, process: "Natural", certification: "UTZ", year: "2018", sku: "LPO-1002", farmer_id: 1, price: 6.40, price2: 5.95, packaging: "60 KG", sample_packaging: "400 gr", batch: "4573", score: "84", variety: "Amarello", screensize: "16+", flavor1: "Chocolate", flavor2: "Vanilla", flavor3: "Caramell", cup_description: "Very aromatic coffee. Fruity, citrus and tropical
#notes. Light body and vibrant acidity. Delicate, clean and complex sweetness.", active: true
#Coffee.create! name: "Matão", bags: 50, process: "Natural", certification: "UTZ", year: "2018", sku: "LPO-1003", farmer_id: 1, price: 6.50, price2: 6.00, packaging: "60 KG", sample_packaging: "400 gr", batch: "4574", score: "86", variety: "Vermello", screensize: "16+", flavor1: "Chocolate", flavor2: "Vanilla", flavor3: "Caramell", cup_description: "Very aromatic coffee. Fruity, citrus and tropical
#notes. Light body and vibrant acidity. Delicate, clean and complex sweetness.", active: true
#Coffee.create! id: 1, name: "Banana", price: 0.49, active: true, farmer_id: 1
#Coffee.create! id: 2, name: "Apple", price: 0.29, active: true, farmer_id: 1
#Coffee.create! id: 3, name: "Carton of Strawberries", price: 1.99, active: true, farmer_id: 1

puts "Everything should be created:  #{Coffee.all.length} Coffees "

OrderStatus.destroy_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

puts "Everything should be created: #{OrderStatus.all.length} OrderStatuses - It might work"


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


