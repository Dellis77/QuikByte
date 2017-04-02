class UsersHasRecipe < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  validates :user_id, uniqueness: { scope: :recipe_id }
  def has_favorite?(users_has_recipe)
    self.users_has_recipes.exists?(:id => recipe.id)
  end
end
