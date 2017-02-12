class FixColumnName < ActiveRecord::Migration[5.0]
  def change
	rename_column :recipes, :RecipeID, :id
  end
end
