json.extract! ingredient, :id, :IngredientName, :IngredientDescription, :IngredientImage, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)