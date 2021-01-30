class AddUnitToMacroNutrient < ActiveRecord::Migration[6.1]
  def change
    add_column :macro_nutrients, :unit, :string
  end
end
