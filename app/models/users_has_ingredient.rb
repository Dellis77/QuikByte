class UsersHasIngredient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :user
  validates :user_id, uniqueness: { scope: :ingredient_id }
end

