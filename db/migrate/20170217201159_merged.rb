class Merged < ActiveRecord::Migration[5.0]
  def change
  	  create_table "ingredients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name",        limit: 45
    t.string "description"
    t.string "image",       limit: 45
  end

  create_table "recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name",         limit: 45
    t.string "description"
    t.string "image",        limit: 45
    t.string "videourl",     limit: 120, null: false
    t.string "instructions", limit: 250
    t.string "preptime",     limit: 45
    t.string "cooktime",     limit: 45
  end

  create_table "recipes_has_ingredients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "recipe_id"
    t.integer "ingredient_id"
    t.index ["ingredient_id"], name: "fk_recipes_has_ingredients_ingredients1_idx", using: :btree
    t.index ["recipe_id"], name: "fk_recipes_has_ingredients_recipes1_idx", using: :btree
  end

  create_table "users_has_ingredients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "ingredient_id"
    t.index ["ingredient_id"], name: "fk_users_has_ingredients_ingredients1_idx", using: :btree
    t.index ["user_id"], name: "fk_users_has_ingredients_users1_idx", using: :btree
  end

  create_table "users_has_recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "recipe_id"
    t.index ["recipe_id"], name: "fk_users_has_recipes_recipes1_idx", using: :btree
    t.index ["user_id"], name: "fk_users_has_recipes_users_idx", using: :btree
  end

  add_foreign_key "recipes_has_ingredients", "ingredients", name: "fk_recipes_has_ingredients_ingredients1"
  add_foreign_key "recipes_has_ingredients", "recipes", name: "fk_recipes_has_ingredients_recipes1"
  add_foreign_key "users_has_ingredients", "ingredients", name: "fk_users_has_ingredients_ingredients1"
  add_foreign_key "users_has_ingredients", "users", name: "fk_users_has_ingredients_users1"
  add_foreign_key "users_has_recipes", "recipes", name: "fk_users_has_recipes_recipes1"
  add_foreign_key "users_has_recipes", "users", name: "fk_users_has_recipes_users"
  end
end
