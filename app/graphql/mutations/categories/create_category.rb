module Mutations
  module Categories
    class CreateCategory < Mutations::BaseMutation
      argument :name, String, required: true

      field :category, Types::App::CategoryType, null: false

      def resolve(name:)
        category = ::Category.find_or_create_by(name: name)

        { category: category }
      end
    end
  end
end
