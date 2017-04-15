class Recipe < ApplicationRecord
	
	def self.search(search)
      where("id LIKE ?", "%#{search}%") 
	end
	
	
	has_many :users_has_recipes
	has_many :users, through: :users_has_recipes
	has_many :recipe_has_ingredients
	has_many :ingredients, through: :recipe_has_ingredients
	
	
	
end
