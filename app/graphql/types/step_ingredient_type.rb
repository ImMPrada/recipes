# frozen_string_literal: true

module Types
  class StepIngredientType < Types::BaseObject
    field :id, ID, null: false
    field :step, Types::StepType, null: false
    field :ingredient, Types::IngredientType, null: false
    field :quantity, Float, null: false
    field :unit, Types::UnitType, null: false
  end
end
