require 'test_helper'

class RecipesHasIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipes_has_ingredient = recipes_has_ingredients(:one)
  end

  test "should get index" do
    get recipes_has_ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_recipes_has_ingredient_url
    assert_response :success
  end

  test "should create recipes_has_ingredient" do
    assert_difference('RecipesHasIngredient.count') do
      post recipes_has_ingredients_url, params: { recipes_has_ingredient: { ingredients_id: @recipes_has_ingredient.ingredients_id, quantity: @recipes_has_ingredient.quantity, recipes_RecipeID: @recipes_has_ingredient.recipes_RecipeID } }
    end

    assert_redirected_to recipes_has_ingredient_url(RecipesHasIngredient.last)
  end

  test "should show recipes_has_ingredient" do
    get recipes_has_ingredient_url(@recipes_has_ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipes_has_ingredient_url(@recipes_has_ingredient)
    assert_response :success
  end

  test "should update recipes_has_ingredient" do
    patch recipes_has_ingredient_url(@recipes_has_ingredient), params: { recipes_has_ingredient: { ingredients_id: @recipes_has_ingredient.ingredients_id, quantity: @recipes_has_ingredient.quantity, recipes_RecipeID: @recipes_has_ingredient.recipes_RecipeID } }
    assert_redirected_to recipes_has_ingredient_url(@recipes_has_ingredient)
  end

  test "should destroy recipes_has_ingredient" do
    assert_difference('RecipesHasIngredient.count', -1) do
      delete recipes_has_ingredient_url(@recipes_has_ingredient)
    end

    assert_redirected_to recipes_has_ingredients_url
  end
end
