class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_recipe

  def create
    @recipe = Recipe.find params[:recipe_id]
    @favorite = @recipe.favorites.new
    @favorite.user = current_user

    if @favorite.save
      redirect_to @recipe, notice: "Thank you for favoriting"
    else
      redirect_to @recipe, alert: "Your favorite recipe could not be saved"
    end
  end
  
  def destroy
    @favorite = current_user.favorites.find(params[:id])
    if @favorite.destroy
      redirect_to @recipe, "You have unfavorited"
    else
      redirect_to @recipe, alert: "Could not unfavorite the recipe :("
    end
  end

  private

  def find_recipe
    @recipe = Recipe.find params[:recipe_id]
  end
end

