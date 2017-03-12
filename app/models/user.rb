class User < ActiveRecord::Base

  # added to connect posts to user
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  has_many :posts

  has_many :favorites
  has_many :favorite_ingredients, through: :favorites, source: :favorited, source_type: 'Ingredient'

end
