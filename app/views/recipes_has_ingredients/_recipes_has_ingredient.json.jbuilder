json.extract! recipes_has_ingredient, :id, :recipes_RecipeID, :ingredients_id, :quantity, :created_at, :updated_at
json.url recipes_has_ingredient_url(recipes_has_ingredient, format: :json)