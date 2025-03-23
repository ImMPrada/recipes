module Mutations
  module Recipes
    class CreateRecipe < Mutations::BaseMutation
      argument :name, String, required: true
      argument :description, String, required: true
      argument :category_id, ID, required: true

      field :recipe, Types::App::RecipeType, null: true
      field :errors, [String], null: true

      def resolve(name:, description:, category_id:)
        category = ::Category.find(category_id)
        recipe = ::Recipe.new(name:, description:, category:)

        if recipe.save
          { recipe: recipe }
        else
          { recipe: nil, errors: recipe.errors.full_messages }
        end
      end
    end
  end
end
