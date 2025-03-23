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

    field :create_or_find_ingredient,
        mutation: Mutations::Ingredients::CreateOrFindIngredient,
        description: "Create or find an ingredient, based on its name",
        null: false

    field :delete_ingredient,
        mutation: Mutations::Ingredients::DeleteIngredient,
        description: "Delete an ingredient",
        null: false

    field :add_recipe_step,
        mutation: Mutations::Recipes::AddRecipeStep,
        description: "Add a step to a recipe",
        null: false
  end
end
