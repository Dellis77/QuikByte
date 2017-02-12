json.extract! recipe, :id, :RecipeName, :RecipeDescription, :RecipeImage, :VideoURL, :Instructions, :PrepTime, :CookTime, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)