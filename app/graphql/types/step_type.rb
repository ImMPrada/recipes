# frozen_string_literal: true

module Types
  class StepType < Types::BaseObject
    field :id, ID, null: false
    field :order, Integer, null: false
    field :description, String, null: false
    field :recipe, Types::RecipeType, null: false
    field :step_ingredients, [Types::StepIngredientType], null: false
  end
end
