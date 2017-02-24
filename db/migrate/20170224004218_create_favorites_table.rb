class CreateFavoritesTable < ActiveRecord::Migration[5.0]
  def self.up
     create_table :favorites, :id => false do |t|
       t.integer :user_id
       t.integer :ingredient_id
     end
  end
  def self.down
     drop_table :favorites
  end
end
