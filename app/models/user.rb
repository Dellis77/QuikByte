class User < ActiveRecord::Base

  # added to connect posts to user
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  
  has_many :posts
  
  has_many :users_has_recipes  #many to many
  has_many :recipes, through: :users_has_recipes #for recipe storage
  
  has_many :users_has_ingredients  #many to many
  has_many :ingredients, through: :users_has_ingredients #for recipe storage

  # creates a new fav row with ingredient_id and user_id
  def users_has_ingredient!(ingredient)
    self.users_has_ingredients.create!(ingredient_id: ingredient.id)
  end
  
  # destroys a fav with matching ingredient_id and user_id
  def unusers_has_ingredient!(ingredient)
    users_has_ingredient = self.users_has_ingredients.find_by_ingredient_id(ingredient.id)
    users_has_ingredient.destroy!
  end
  
  # returns true of false if an ingredient is favorited by user
  def users_has_ingredient?(ingredient)
    self.users_has_ingredients.find_by_ingredient_id(ingredient.id)
  end
end
