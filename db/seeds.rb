# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "\e[33m destroying all \e[0m"
Category.destroy_all
Recipe.destroy_all
puts "\e[32m done! \e[0m"



puts "\e[33m creating categories \e[0m"
breakfast_category = Category.create(name: "Breakfast")
Category.create(name: "Lunch")
Category.create(name: "Dinner")
Category.create(name: "Snack")
Category.create(name: "Dessert")
cocktail_category = Category.create(name: "Cocktail")
puts "\e[32m done! \e[0m"

puts "\e[33m creating recipes \e[0m"
Recipe.create(
  name: "Eggs Benedict",
  category: breakfast_category,
  description: "A classic breakfast dish with eggs, bacon, and toast."
)
Recipe.create(
  name: "Boulevardier",
  category: cocktail_category,
  description: "A classic cocktail with bourbon, bitters, and orange bitters."
)
puts "\e[32m done! \e[0m"
