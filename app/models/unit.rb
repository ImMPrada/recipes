class Unit < ApplicationRecord
  has_many :step_ingredients, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
