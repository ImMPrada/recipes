module Mutations
  module Ingredients
    class CreateOrFindIngredient < Mutations::BaseMutation
      argument :name, String, required: true

      field :ingredient, Types::App::IngredientType, null: false
      
      def resolve(name:)
        ingredient = ::Ingredient.find_or_create_by(name:)
        { ingredient: ingredient }
      end
    end
  end
end
