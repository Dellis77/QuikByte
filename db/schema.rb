# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170219200052) do

  create_table "ingredients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name",        limit: 45
    t.string "description"
    t.string "image",       limit: 45
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
  end

  create_table "recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name",         limit: 45
    t.string "description"
    t.string "image",        limit: 45
    t.string "videourl"
    t.string "instructions", limit: 250
    t.string "preptime",     limit: 45
    t.string "cooktime",     limit: 45
  end

  create_table "recipes_has_ingredients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "recipe_id"
    t.integer "ingredient_id"
    t.string  "quantity"
    t.index ["ingredient_id"], name: "fk_recipes_has_ingredients_ingredients1_idx", using: :btree
    t.index ["recipe_id"], name: "fk_recipes_has_ingredients_recipes1_idx", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "fname"
    t.string   "lname"
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
