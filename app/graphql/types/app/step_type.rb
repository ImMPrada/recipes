# frozen_string_literal: true

module Types
  module App
    class StepType < Types::BaseObject
      field :id, ID, null: false
      field :order, Integer, null: false
      field :description, String, null: false
      field :recipe, RecipeType, null: false
      field :step_ingredients, [StepIngredientType], null: false
    end
  end
end
