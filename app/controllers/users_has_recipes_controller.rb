class UsersHasRecipesController < ApplicationController
  before_action :set_users_has_recipe, only: [:show, :edit, :update, :destroy]



  # GET /users_has_recipes
  # GET /users_has_recipes.json
  def index
    @users_has_recipes = UsersHasRecipe.joins(:recipe, :user).where(:user_id => current_user.id).order("name")
  end

  # GET /users_has_recipes/1
  # GET /users_has_recipes/1.json
  def show
  end

  # GET /users_has_recipes/new
  def new
    @users_has_recipe = UsersHasRecipe.new
    @users_has_recipe.user_id = current_user.id
  end

  # GET /users_has_recipes/1/edit
  def edit
  end

  # POST /users_has_recipes
  # POST /users_has_recipes.json
  def create
    @users_has_recipe = UsersHasRecipe.new(users_has_recipe_params)
    @users_has_recipe.user_id = current_user.id
    
    respond_to do |format|
      if @users_has_recipe.save
        format.html { redirect_to @users_has_recipe, notice: 'Recipe was successfully favorited.' }
        format.json { render :show, status: :created, location: @users_has_recipe }
      else
        format.html {redirect_to users_has_ingredients_path, notice: 'Recipe is already favorited!'  }
      end
    end
  end

  # PATCH/PUT /users_has_recipes/1
  # PATCH/PUT /users_has_recipes/1.json
  def update
    respond_to do |format|
      if @users_has_recipe.update(users_has_recipe_params)
        format.html { redirect_to @users_has_recipe, notice: 'Users has recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_has_recipe }
      else
        format.html { render :edit }
        format.json { render json: @users_has_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_has_recipes/1
  # DELETE /users_has_recipes/1.json
  
  def destroy
    @users_has_recipe.destroy
    respond_to do |format|
      format.html { redirect_to users_has_recipes_url, notice: 'Recipe was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_has_recipe
      @users_has_recipe = UsersHasRecipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_has_recipe_params
      params.permit(:id, :user_id, :recipe_id)
    end
end