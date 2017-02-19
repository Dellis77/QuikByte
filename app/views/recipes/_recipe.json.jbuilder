json.extract! recipe, :id, :name, :description, :image, :videourl, :instructions, :preptime, :cooktime, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)