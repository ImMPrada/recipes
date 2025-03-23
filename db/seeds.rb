# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Category.destroy_all

Category.create(name: "Breakfast")
Category.create(name: "Lunch")
Category.create(name: "Dinner")
Category.create(name: "Snack")
Category.create(name: "Dessert")
Category.create(name: "Cocktail")
