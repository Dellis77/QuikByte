class Merged < ActiveRecord::Migration[5.0]
  def change
  create_table "ingredients", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "IngredientName",        limit: 45
    t.string "IngredientDescription"
    t.string "IngredientImage",       limit: 45
  end

  create_table "recipes", primary_key: "RecipeID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "RecipeName",        limit: 45,  null: false
    t.string "RecipeDescription"
    t.string "RecipeImage",       limit: 45
    t.string "VideoURL",          limit: 120, null: false
    t.string "Instructions",      limit: 250
    t.string "PrepTime",          limit: 45
    t.string "CookTime",          limit: 45
  end

  create_table "recipes_has_ingredients", primary_key: ["recipes_RecipeID", "ingredients_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "recipes_RecipeID",            null: false
    t.integer "ingredients_id",              null: false
    t.string  "quantity",         limit: 45
    t.index ["ingredients_id"], name: "fk_recipes_has_ingredients_ingredients1_idx", using: :btree
    t.index ["recipes_RecipeID"], name: "fk_recipes_has_ingredients_recipes1_idx", using: :btree
  end

  create_table "users_has_ingredients", primary_key: ["users_id", "ingredients_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "users_id",       null: false
    t.integer "ingredients_id", null: false
    t.index ["ingredients_id"], name: "fk_users_has_ingredients_ingredients1_idx", using: :btree
    t.index ["users_id"], name: "fk_users_has_ingredients_users_idx", using: :btree
  end

  create_table "users_has_recipes", primary_key: ["users_id", "recipes_RecipeID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "users_id",         null: false
    t.integer "recipes_RecipeID", null: false
    t.index ["recipes_RecipeID"], name: "fk_users_has_recipes_recipes1_idx", using: :btree
    t.index ["users_id"], name: "fk_users_has_recipes_users1_idx", using: :btree
  end

  add_foreign_key "recipes_has_ingredients", "ingredients", column: "ingredients_id", name: "fk_recipes_has_ingredients_ingredients1"
  add_foreign_key "recipes_has_ingredients", "recipes", column: "recipes_RecipeID", primary_key: "RecipeID", name: "fk_recipes_has_ingredients_recipes1"
  add_foreign_key "users_has_ingredients", "ingredients", column: "ingredients_id", name: "fk_users_has_ingredients_ingredients1"
  add_foreign_key "users_has_ingredients", "users", column: "users_id", name: "fk_users_has_ingredients_users"
  add_foreign_key "users_has_recipes", "recipes", column: "recipes_RecipeID", primary_key: "RecipeID", name: "fk_users_has_recipes_recipes1"
  add_foreign_key "users_has_recipes", "users", column: "users_id", name: "fk_users_has_recipes_users1"
end
end