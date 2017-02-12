class FixColumnNameJoinRecipe3 < ActiveRecord::Migration[5.0]
  def up
	change_column :users_has_recipes, :recipe_id, :integer, after: :user_id
  end
end
