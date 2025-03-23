# frozen_string_literal: true

module Types
  class UnitType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :step_ingredients, [Types::StepIngredientType], null: false
  end
end
