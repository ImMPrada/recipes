class CreateStepIngredients < ActiveRecord::Migration[8.0]
  def change
    create_table :step_ingredients do |t|
      t.references :step, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.float :quantity
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
