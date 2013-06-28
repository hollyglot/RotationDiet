require 'test_helper'

class FoodFamiliesControllerTest < ActionController::TestCase
  setup do
    @food_family = food_families(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_families)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_family" do
    assert_difference('FoodFamily.count') do
      post :create, food_family: { food_family: @food_family.food_family, food_group_id: @food_family.food_group_id }
    end

    assert_redirected_to food_family_path(assigns(:food_family))
  end

  test "should show food_family" do
    get :show, id: @food_family
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_family
    assert_response :success
  end

  test "should update food_family" do
    put :update, id: @food_family, food_family: { food_family: @food_family.food_family, food_group_id: @food_family.food_group_id }
    assert_redirected_to food_family_path(assigns(:food_family))
  end

  test "should destroy food_family" do
    assert_difference('FoodFamily.count', -1) do
      delete :destroy, id: @food_family
    end

    assert_redirected_to food_families_path
  end
end
