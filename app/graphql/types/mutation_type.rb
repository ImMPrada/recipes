# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_or_find_category,
        mutation: Mutations::Categories::CreateOrFindCategory,
        description: "Create or find a category, based on its name",
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
