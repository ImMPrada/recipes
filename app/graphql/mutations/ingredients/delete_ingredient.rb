module Mutations
  module Ingredients
    class DeleteIngredient < Mutations::BaseMutation
      argument :id, ID, required: true

      field :message, String, null: false
      
      def resolve(id:)
        begin
          ingredient = ::Ingredient.find(id)
          ingredient.destroy

          { message: "Ingredient deleted" }
        rescue ActiveRecord::RecordNotFound
          { message: "Ingredient not found" }
        end
      end
    end
  end
end

