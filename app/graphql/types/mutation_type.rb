# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_category,
        mutation: Mutations::Categories::CreateCategory,
        description: "Create a new category",
        null: false

    field :delete_category,
        mutation: Mutations::Categories::DeleteCategory,
        description: "Delete a category",
        null: false

    field :create_recipe,
        mutation: Mutations::Recipes::CreateRecipe,
        description: "Create a new recipe",
        null: false

    field :delete_recipe,
        mutation: Mutations::Recipes::DeleteRecipe,
        description: "Delete a recipe",
        null: false
  end
end
