module Mutations
  module Categories
    class DeleteCategory < Mutations::BaseMutation
      argument :id, ID, required: true

      field :message, String, null: false

      def resolve(id:)
        begin
          category = ::Category.find(id)
          category.destroy

          { message: "Category deleted" }
        rescue ActiveRecord::RecordNotFound
          { message: "Category not found" }
        end
      end
    end
  end
end
