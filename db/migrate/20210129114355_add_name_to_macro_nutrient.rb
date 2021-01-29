class AddNameToMacroNutrient < ActiveRecord::Migration[6.1]
  def change
    add_column :macro_nutrients, :name, :string
  end
end
