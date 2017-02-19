json.extract! recipes_has_ingredient, :id, :recipe_id, :ingredient_id, :created_at, :updated_at
json.url recipes_has_ingredient_url(recipes_has_ingredient, format: :json)