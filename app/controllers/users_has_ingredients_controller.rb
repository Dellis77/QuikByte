class UsersHasIngredientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_users_has_ingredient, only: [:show, :edit, :update, :destroy]
  # GET /users_has_ingredients
  # GET /users_has_ingredients.json

  
  def index
    @users_has_ingredients = UsersHasIngredient.all
    @users_has_ingredient = UsersHasIngredient.new 
    @users_has_ingredients = UsersHasIngredient.joins(:ingredient).where(:user_id => current_user.id).order("name ASC")
    @ids = params[:ing_id]
    @ids = @ids.try(:split, ",")
    @gen = RecipesHasIngredient.where(:ingredient_id => @ids.to_a).group('recipe_id').order('count(recipe_id) DESC LIMIT 50')
    @top_five = Recipe.joins(:users_has_recipes).group("recipe_id").order("count(recipe_id) DESC LIMIT 5")
    @favorite_video = UsersHasRecipe.joins(:recipe, :user).where(:user_id => current_user.id).order("name")
    @quik_recipes = Recipe.select("(preptime + cooktime) as totaltime, name, videourl").order("totaltime LIMIT 5")
    User.order('name DESC')
  end

  # GET /users_has_ingredients/1
  # GET /users_has_ingredients/1.json
  def show
  end

  # GET /users_has_ingredients/new
  def new
    @users_has_ingredient = UsersHasIngredient.new
    @users_has_ingredient.user_id = current_user.id
  end

  # GET /users_has_ingredients/1/edit
  def edit
  end

  # POST /users_has_ingredients
  # POST /users_has_ingredients.json
  
  def create
    @users_has_ingredient = UsersHasIngredient.new(users_has_ingredient_params)
    @users_has_ingredient.user_id = current_user.id

    respond_to do |format|
      if @users_has_ingredient.save
        format.html { redirect_to ingredients_path, notice: 'Ingredient was successfully added.' }
        format.json { render :show, status: :created, location: @users_has_ingredient }
      else
  
        format.html {redirect_to ingredients_path, notice: 'Ingredient is already in your MyFridge.'  }
      end
    end
  end

  # PATCH/PUT /users_has_ingredients/1
  # PATCH/PUT /users_has_ingredients/1.json
  def update
    respond_to do |format|
      if @users_has_ingredient.update(users_has_ingredient_params)
        format.html { redirect_to @users_has_ingredient, notice: 'Users has ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_has_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @users_has_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_has_ingredients/1
  # DELETE /users_has_ingredients/1.json
  def destroy
    @users_has_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to users_has_ingredients_url, notice: 'Users has ingredient was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_has_ingredient
      @users_has_ingredient = UsersHasIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_has_ingredient_params
      params.permit(:user_id, :ingredient_id, :id)
    end
end
