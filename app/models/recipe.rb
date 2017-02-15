class Recipe < ApplicationRecord
	has_many :recipes_has_ingredients  #many to many
	has_many :ingredients, through: :recipes_has_ingredients #for recipe storage
end
