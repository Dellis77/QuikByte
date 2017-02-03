class Quikbyte < ActiveRecord::Migration[5.0]
  def change
  	  create_table "recipe", primary_key: "RecipeID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "RecipeName",        limit: 45,  null: false
    t.string "RecipeDescription", limit: 45
    t.string "RecipeImage",       limit: 45
    t.string "VideoURL",          limit: 120, null: false
    t.string "Instructions",      limit: 250
    t.string "PrepTime",          limit: 45
    t.string "CookTime",          limit: 45
  end

  create_table "ingredient", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "IngredientName",        limit: 45
    t.string "IngredientDescription", limit: 120
    t.string "IngredientImage",       limit: 45
  end
  end
end
