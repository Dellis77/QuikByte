class CreateJoinTableForUsersIngredients < ActiveRecord::Migration[5.0]
  def change
        create_table :ingredients_users, id: false do |t|
      t.belongs_to :ingredient
      t.belongs_to :user
      end
   end
end
