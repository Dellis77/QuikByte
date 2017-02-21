class Ingredient < ApplicationRecord
	has_many :users_has_ingredients
	has_many :users, through: :users_has_ingredients
	has_many :recipe_has_ingredients
	has_many :recipes, through: :recipe_has_ingredients
end
