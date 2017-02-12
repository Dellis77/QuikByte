json.extract! users_has_ingredient, :id, :users_id, :ingredients_id, :created_at, :updated_at
json.url users_has_ingredient_url(users_has_ingredient, format: :json)