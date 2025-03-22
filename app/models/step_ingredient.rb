class StepIngredient < ApplicationRecord
  belongs_to :step
  belongs_to :ingredient
  belongs_to :unit

  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
