# frozen_string_literal: true

module Types
  module App
    class CategoryType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :recipes, [RecipeType], null: false
    end
  end
end
