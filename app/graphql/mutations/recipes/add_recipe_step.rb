module Mutations
  module Recipes
    class AddRecipeStep < Mutations::BaseMutation
      argument :recipe_id, ID, required: true
      argument :description, String, required: true
      argument :ingredient_name, String, required: false
      argument :unit_name, String, required: false
      argument :quantity, Float, required: false

      field :step, Types::App::StepType, null: true
      field :errors, [String], null: true
      
      def resolve(
        recipe_id:,
        description:,
        ingredient_name:,
        unit_name:,
        quantity:
      )
        begin
          step = ::Step.new(description:)
          recipe = ::Recipe.find(recipe_id)
          
          step.order = recipe.steps.count + 1
          step.recipe = recipe
          return { errors: step.errors.full_messages } unless step.save
          
          if ingredient_name && unit_name && quantity
            ingredient = ::Ingredient.find_or_create_by!(name: ingredient_name)
            unit = ::Unit.find_or_create_by!(name: unit_name)

            step_ingredient = ::StepIngredient.new(
              step:,
              ingredient:,
              unit:,
              quantity:
            )
            return { errors: step_ingredient.errors.full_messages } unless step_ingredient.save
          end

          {
            step:
          }
        rescue => e
          { errors: [e.message] }
        end
      end
    end
  end
end
