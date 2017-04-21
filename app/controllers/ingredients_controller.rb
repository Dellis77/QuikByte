class IngredientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]

 
  # GET /ingredients
  # GET /ingredients.json
  def index
  @ingredients = Ingredient.all
  @q = Ingredient.ransack(params[:q])
  @ingredient = @q.result(distinct: true)
  @top_five = Recipe.joins(:users_has_recipes).group("recipe_id").order("count(recipe_id) DESC LIMIT 5")
  @favorite_video = UsersHasRecipe.joins(:recipe, :user).where(:user_id => current_user.id).order("name")
  @quik_recipes = Recipe.select("(preptime + cooktime) as totaltime, name, videourl").order("totaltime LIMIT 5")
  User.order('name DESC')
 
  @Uing = UsersHasIngredient.find_each
  
  

  end
  
  # GET /ingredients/1
  # GET /ingredients/1.json
  def show
    @ingredient = Ingredient.find(params[:id])
  end

  # GET /ingredients/new
  def new
    @ingredient = Ingredient.new
    
  end

  # GET /ingredients/1/edit
  def edit
  end

  # POST /ingredients
  # POST /ingredients.json
  def create
    @ingredient = Ingredient.new(ingredient_params)

    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @ingredient }
      else
        format.html { render :new }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredients/1
  # PATCH/PUT /ingredients/1.json
  def update
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredient }
      else
        format.html { render :edit }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.json
  def destroy
    @ingredient.destroy
    respond_to do |format|
      format.html { redirect_to ingredients_url, notice: 'Ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_params
      params.require(:ingredient).permit(:name, :description, :image, :id,)
    end
end