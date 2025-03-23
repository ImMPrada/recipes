# frozen_string_literal: true

module Types
  module App
    class UnitType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :step_ingredients, [StepIngredientType], null: false
    end
  end
end
