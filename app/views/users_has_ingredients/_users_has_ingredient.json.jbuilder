json.extract! users_has_ingredient, :id, :user_id, :ingredient_id, :created_at, :updated_at
json.url users_has_ingredient_url(users_has_ingredient, format: :json)