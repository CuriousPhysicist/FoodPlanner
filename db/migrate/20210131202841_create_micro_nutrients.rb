class CreateMicroNutrients < ActiveRecord::Migration[6.1]
  def change
    create_table :micro_nutrients do |t|
      t.string :group
      t.float :specific_quantity
      t.string :name
      t.string :unit
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
