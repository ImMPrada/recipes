class Ingredient < ApplicationRecord
  has_many :step_ingredients, dependent: :destroy
  has_many :steps, through: :step_ingredients

  validates :name, presence: true, uniqueness: true
end
