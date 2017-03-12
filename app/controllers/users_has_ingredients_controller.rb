class UsersHasIngredientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_users_has_ingredient, only: [:show, :edit, :update, :destroy]
  # GET /users_has_ingredients
  # GET /users_has_ingredients.json
respond_to :js

  def users_has_ingredient
    @user = current_user
    @ingredient = Ingredient.find(params[:ingredient_id])
    @user.users_has_ingredient!(@ingredient)
  end
  
  def unusers_has_ingredient
    @user = current_user
    @users_has_ingredient = @user.users_has_ingredients.find_by_ingredient_id(params[:ingredient_id])
    @ingredient = Ingredient.find(params[:ingredient_id])
    @users_has_ingredient.destroy!
  end
  
  def index
    @users_has_ingredients = UsersHasIngredient.joins(:ingredient).where(:user_id => current_user.id).order("name ASC")
  end

  # GET /users_has_ingredients/1
  # GET /users_has_ingredients/1.json
  def show
  end

  # GET /users_has_ingredients/new
  def new
    @users_has_ingredient = UsersHasIngredient.new
  end

  # GET /users_has_ingredients/1/edit
  def edit
  end

  # POST /users_has_ingredients
  # POST /users_has_ingredients.json
  def create
    @users_has_ingredient = UsersHasIngredient.new(users_has_ingredient_params)

    respond_to do |format|
      if @users_has_ingredient.save
        format.html { redirect_to @users_has_ingredient, notice: 'Users has ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @users_has_ingredient }
      else
        format.html { render :new }
        format.json { render json: @users_has_ingredient.errors, status: :unprocessable_entity }
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
      format.html { redirect_to users_has_ingredients_url, notice: 'Users has ingredient was successfully destroyed.' }
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
      params.require(:users_has_ingredient).permit(:user_id, :ingredient_id)
    end
end
