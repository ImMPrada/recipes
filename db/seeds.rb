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
Step.destroy_all
StepIngredient.destroy_all
Ingredient.destroy_all
Unit.destroy_all
puts "\e[32m done! \e[0m"



puts "\e[33m creating categories \e[0m"
breakfast_category = Category.create!(name: "Breakfast")
Category.create!(name: "Lunch")
Category.create!(name: "Dinner")
Category.create!(name: "Snack")
Category.create!(name: "Dessert")
cocktail_category = Category.create!(name: "Cocktail")
puts "\e[32m done! \e[0m"

puts "\e[33m creating recipes \e[0m"
Recipe.create!(
  name: "Eggs Benedict",
  category: breakfast_category,
  description: "A classic breakfast dish with eggs, bacon, and toast."
)
boulevardier = Recipe.create!(
  name: "Boulevardier",
  category: cocktail_category,
  description: "A classic cocktail with bourbon, bitters, and orange bitters."
)
puts "\e[32m done! \e[0m"

puts "\e[33m creating units \e[0m"
oz = Unit.create!(name: "oz")
drops = Unit.create!(name: "drops")
puts "\e[32m done! \e[0m"

puts "\e[33m creating ingredients \e[0m"
bourbon = Ingredient.create!(name: "Bourbon")
orange_bitters = Ingredient.create!(name: "Orange Bitters")
sweet_vermouth = Ingredient.create!(name: "Sweet Vermouth")
campari = Ingredient.create!(name: "Campari")
puts "\e[32m done! \e[0m"

puts "\e[33m creating recipe steps \e[0m"
step_1 = Step.create!(recipe: boulevardier, order: 1, description: "Add ice to a mixing glass.")
step_2 = Step.create!(recipe: boulevardier, order: 2, description: "Add orange bitters to the mixing glass.")
step_3 = Step.create!(recipe: boulevardier, order: 3, description: "Add sweet vermouth to the mixing glass.")
step_4 = Step.create!(recipe: boulevardier, order: 4, description: "Add campari to the mixing glass.")
step_5 = Step.create!(recipe: boulevardier, order: 5, description: "Add bourbon to the mixing glass.")
step_6 = Step.create!(recipe: boulevardier, order: 6, description: "Stir well.")
step_7 = Step.create!(recipe: boulevardier, order: 7, description: "Add ice to a rocks glass.")
step_8 = Step.create!(recipe: boulevardier, order: 8, description: "Strain the cocktail into the rocks glass over ice.")
step_9 = Step.create!(recipe: boulevardier, order: 9, description: "Garnish with an orange peel.")
step_10 = Step.create!(recipe: boulevardier, order: 10, description: "Enjoy!")

StepIngredient.create!(step: step_2, ingredient: orange_bitters, quantity: 10.0, unit: drops)
StepIngredient.create!(step: step_3, ingredient: sweet_vermouth, quantity: 1.0, unit: oz)
StepIngredient.create!(step: step_4, ingredient: campari, quantity: 1.0, unit: oz)
StepIngredient.create!(step: step_5, ingredient: bourbon, quantity: 1.0, unit: oz)

puts "\e[32m done! \e[0m"
