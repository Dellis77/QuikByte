json.extract! users_has_recipe, :id, :user_id, :recipe_id, :created_at, :updated_at
json.url users_has_recipe_url(users_has_recipe, format: :json)