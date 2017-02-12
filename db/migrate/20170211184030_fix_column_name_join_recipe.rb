class FixColumnNameJoinRecipe < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users_has_recipes, :recipes_RecipeID, :recipes_id
  	rename_column :recipes_has_ingredients, :recipes_RecipeID, :recipes_id
  end
end
