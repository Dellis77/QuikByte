class CreateUsersHasRecipesCorrect < ActiveRecord::Migration[5.0]
  def change
    create_table "users_has_recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "recipe_id"
    t.index ["recipe_id"], name: "fk_users_has_recipes_recipes1_idx", using: :btree
    t.index ["user_id"], name: "fk_users_has_recipes_users_idx", using: :btree
  end
end
end