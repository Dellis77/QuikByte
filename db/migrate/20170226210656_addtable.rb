class Addtable < ActiveRecord::Migration[5.0]
 def change
  create_table :users_has_ingredients do |t|
    t.belongs_to :ingredient, index: true
    t.belongs_to :user, index: true
    t.timestamps null: false
  end
 end
end

