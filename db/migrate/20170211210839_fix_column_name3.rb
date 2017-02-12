class FixColumnName3 < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users_has_recipes, :users_id, :recipe_id
  	rename_column :users_has_recipes, :recipes_id, :user_id
  	rename_column :recipes_has_ingredients, :recipes_id, :recipe_id
  	rename_column :recipes_has_ingredients, :ingredients_id, :ingredient_id
    rename_column :users_has_ingredients, :users_id, :user_id
  	rename_column :users_has_ingredients, :ingredients_id, :ingredient_id
  end
end
