class Recipe < ApplicationRecord
  belongs_to :category
  has_many :steps, dependent: :destroy
  has_many :step_ingredients, through: :steps

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
