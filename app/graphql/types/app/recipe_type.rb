# frozen_string_literal: true

module Types
  module App
    class RecipeType < Types::BaseObject
      field :id, ID, null: false
      field :name, String
      field :description, String
      field :category_id, Integer, null: false
      field :category, CategoryType
      field :steps, [StepType], null: false
    end
  end
end
