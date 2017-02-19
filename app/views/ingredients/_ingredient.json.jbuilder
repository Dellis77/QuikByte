json.extract! ingredient, :id, :name, :description, :image, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)