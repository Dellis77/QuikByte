class Recipe < ApplicationRecord
	has_many :recipe_has_ingredients
	has_many :ingredients, through: :recipe_has_ingredients
	has_many :user
end
