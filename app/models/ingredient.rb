class Ingredient < ApplicationRecord
	has_many :users_has_ingredients, dependent: :destroy
	has_many :users, through: :users_has_ingredients
end
