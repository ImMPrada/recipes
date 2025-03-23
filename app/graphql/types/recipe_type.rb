# frozen_string_literal: true

module Types
  class RecipeType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :description, String
    field :category_id, Integer, null: false
    field :category, Types::CategoryType
    field :steps, [Types::StepType], null: false
  end
end
