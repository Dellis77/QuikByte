json.extract! users_has_recipe, :id, :users_id, :recipes_RecipeID, :created_at, :updated_at
json.url users_has_recipe_url(users_has_recipe, format: :json)