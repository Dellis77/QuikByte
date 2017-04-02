class RecipesHasIngredientsController < ApplicationController
  before_action :set_recipes_has_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /recipes_has_ingredients
  # GET /recipes_has_ingredients.json
  def index
    @recipes_has_ingredients = RecipesHasIngredient.all
    @recipes = Recipe.all
    @ingredients = RecipesHasIngredient.joins(:recipe)
  end

  # GET /recipes_has_ingredients/1
  # GET /recipes_has_ingredients/1.json
  def show
  end

  # GET /recipes_has_ingredients/new
  def new
    @recipes_has_ingredient = RecipesHasIngredient.new
  end

  # GET /recipes_has_ingredients/1/edit
  def edit
  end

  # POST /recipes_has_ingredients
  # POST /recipes_has_ingredients.json
  def create
    @recipes_has_ingredient = RecipesHasIngredient.new(recipes_has_ingredient_params)

    respond_to do |format|
      if @recipes_has_ingredient.save
        format.html { redirect_to @recipes_has_ingredient, notice: 'Recipes has ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @recipes_has_ingredient }
      else
        format.html { render :new }
        format.json { render json: @recipes_has_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes_has_ingredients/1
  # PATCH/PUT /recipes_has_ingredients/1.json
  def update
    respond_to do |format|
      if @recipes_has_ingredient.update(recipes_has_ingredient_params)
        format.html { redirect_to @recipes_has_ingredient, notice: 'Recipes has ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipes_has_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @recipes_has_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes_has_ingredients/1
  # DELETE /recipes_has_ingredients/1.json
  def destroy
    @recipes_has_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to recipes_has_ingredients_url, notice: 'Recipes has ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipes_has_ingredient
      @recipes_has_ingredient = RecipesHasIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipes_has_ingredient_params
      params.require(:recipes_has_ingredient).permit(:recipe_id, :ingredient_id, :quantity)
    end
end
