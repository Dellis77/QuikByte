class DropUsersHasRecipes < ActiveRecord::Migration[5.0]
  def change
    drop_table :users_has_recipes
  end
end
