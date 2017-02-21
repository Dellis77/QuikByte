class Ingredient < ApplicationRecord
	has_many :recipe
	has_many :user
end
