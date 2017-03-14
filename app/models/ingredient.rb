class Ingredient < ApplicationRecord
	belongs_to :user
	has_many :users_has_ingredient
	
end
