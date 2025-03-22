class Step < ApplicationRecord
  belongs_to :recipe
  has_many :step_ingredients, dependent: :destroy
  has_many :ingredients, through: :step_ingredients

  validates :order, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :description, presence: true
end
