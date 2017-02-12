class FixColumnNameJoinRecipe2 < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users_has_recipes, :user_id, :user_id
  	rename_column :users_has_recipes, :recipe_id, :recipe_id
  end
end
