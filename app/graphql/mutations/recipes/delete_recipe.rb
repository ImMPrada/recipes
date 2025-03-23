module Mutations
  module Recipes
    class DeleteRecipe < Mutations::BaseMutation
      argument :id, ID, required: true

      field :message, String, null: false

      def resolve(id:)
        begin
          recipe = ::Recipe.find(id)
          recipe.destroy

          { message: "Recipe deleted" }
        rescue ActiveRecord::RecordNotFound
          { message: "Recipe not found" }
        end
      end
    end
  end
end
