class Merged < ActiveRecord::Migration[5.0]
  def change
  	  create_table "ingredient", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "IngredientName",        limit: 45
    t.string "IngredientDescription", limit: 120
    t.string "IngredientImage",       limit: 45
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
  end

  create_table "recipe", primary_key: "RecipeID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "RecipeName",        limit: 45,  null: false
    t.string "RecipeDescription", limit: 45
    t.string "RecipeImage",       limit: 45
    t.string "VideoURL",          limit: 120, null: false
    t.string "Instructions",      limit: 250
    t.string "PrepTime",          limit: 45
    t.string "CookTime",          limit: 45
  end

  create_table "recipe_has_ingredient", primary_key: ["recipe_RecipeID", "ingredient_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "recipe_RecipeID", null: false
    t.integer "ingredient_id",   null: false
    t.index ["ingredient_id"], name: "fk_recipe_has_ingredient_ingredient1_idx", using: :btree
    t.index ["recipe_RecipeID"], name: "fk_recipe_has_ingredient_recipe1_idx", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_has_ingredient", primary_key: ["users_id", "ingredient_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "users_id",      null: false
    t.integer "ingredient_id", null: false
    t.index ["ingredient_id"], name: "fk_users_has_ingredient_ingredient1_idx", using: :btree
    t.index ["users_id"], name: "fk_users_has_ingredient_users_idx", using: :btree
  end

  create_table "users_has_recipe", primary_key: ["users_id", "recipe_RecipeID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "users_id",        null: false
    t.integer "recipe_RecipeID", null: false
    t.index ["recipe_RecipeID"], name: "fk_users_has_recipe_recipe1_idx", using: :btree
    t.index ["users_id"], name: "fk_users_has_recipe_users1_idx", using: :btree
  end

  add_foreign_key "recipe_has_ingredient", "ingredient", name: "fk_recipe_has_ingredient_ingredient1"
  add_foreign_key "recipe_has_ingredient", "recipe", column: "recipe_RecipeID", primary_key: "RecipeID", name: "fk_recipe_has_ingredient_recipe1"
  add_foreign_key "users_has_ingredient", "ingredient", name: "fk_users_has_ingredient_ingredient1"
  add_foreign_key "users_has_ingredient", "users", column: "users_id", name: "fk_users_has_ingredient_users"
  add_foreign_key "users_has_recipe", "recipe", column: "recipe_RecipeID", primary_key: "RecipeID", name: "fk_users_has_recipe_recipe1"
  add_foreign_key "users_has_recipe", "users", column: "users_id", name: "fk_users_has_recipe_users1"
end
  end