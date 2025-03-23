# frozen_string_literal: true

module Types
  module App
    class StepIngredientType < Types::BaseObject
      field :id, ID, null: false
      field :step, StepType, null: false
      field :ingredient, IngredientType, null: false
      field :quantity, Float, null: false
      field :unit, UnitType, null: false
    end
  end
end
