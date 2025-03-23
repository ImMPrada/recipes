# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_category,
        mutation: Mutations::Categories::Create,
        description: "Create a new category",
        null: false

    field :delete_category,
        mutation: Mutations::Categories::Delete,
        description: "Delete a category",
        null: false
  end
end
