class CreateMacroNutrients < ActiveRecord::Migration[6.1]
  def change
    create_table :macro_nutrients do |t|
      t.string :group
      t.float :specific_quantity
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
