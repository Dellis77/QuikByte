class Recipe < ApplicationRecord
	has_many :users_has_recipes
	has_many :users, through: :users_has_recipes
	has_many :recipe_has_ingredients
	has_many :ingredients, through: :recipe_has_ingredients
end
