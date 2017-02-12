require 'test_helper'

class UsersHasRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_has_recipe = users_has_recipes(:one)
  end

  test "should get index" do
    get users_has_recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_users_has_recipe_url
    assert_response :success
  end

  test "should create users_has_recipe" do
    assert_difference('UsersHasRecipe.count') do
      post users_has_recipes_url, params: { users_has_recipe: { recipes_RecipeID: @users_has_recipe.recipes_RecipeID, users_id: @users_has_recipe.users_id } }
    end

    assert_redirected_to users_has_recipe_url(UsersHasRecipe.last)
  end

  test "should show users_has_recipe" do
    get users_has_recipe_url(@users_has_recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_has_recipe_url(@users_has_recipe)
    assert_response :success
  end

  test "should update users_has_recipe" do
    patch users_has_recipe_url(@users_has_recipe), params: { users_has_recipe: { recipes_RecipeID: @users_has_recipe.recipes_RecipeID, users_id: @users_has_recipe.users_id } }
    assert_redirected_to users_has_recipe_url(@users_has_recipe)
  end

  test "should destroy users_has_recipe" do
    assert_difference('UsersHasRecipe.count', -1) do
      delete users_has_recipe_url(@users_has_recipe)
    end

    assert_redirected_to users_has_recipes_url
  end
end
