require 'test_helper'

class UsersHasIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_has_ingredient = users_has_ingredients(:one)
  end

  test "should get index" do
    get users_has_ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_users_has_ingredient_url
    assert_response :success
  end

  test "should create users_has_ingredient" do
    assert_difference('UsersHasIngredient.count') do
      post users_has_ingredients_url, params: { users_has_ingredient: { ingredient_id: @users_has_ingredient.ingredient_id, user_id: @users_has_ingredient.user_id } }
    end

    assert_redirected_to users_has_ingredient_url(UsersHasIngredient.last)
  end

  test "should show users_has_ingredient" do
    get users_has_ingredient_url(@users_has_ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_has_ingredient_url(@users_has_ingredient)
    assert_response :success
  end

  test "should update users_has_ingredient" do
    patch users_has_ingredient_url(@users_has_ingredient), params: { users_has_ingredient: { ingredient_id: @users_has_ingredient.ingredient_id, user_id: @users_has_ingredient.user_id } }
    assert_redirected_to users_has_ingredient_url(@users_has_ingredient)
  end

  test "should destroy users_has_ingredient" do
    assert_difference('UsersHasIngredient.count', -1) do
      delete users_has_ingredient_url(@users_has_ingredient)
    end

    assert_redirected_to users_has_ingredients_url
  end
end
