# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "1. destroying seeds"
Ingredient.destroy_all

puts "2. creating seeds"
list_url = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
list_parsed = JSON.parse(list_url)


puts "3. Creating ingredients"
list_parsed["drinks"].each do |item|
  ingredient = Ingredient.create(name: item["strIngredient1"])
  puts ingredient.name
  end

puts "done and dusted!"


