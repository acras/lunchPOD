require 'test_helper'

class FoodPicturesControllerTest < ActionController::TestCase
  setup do
    @food_picture = food_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_picture" do
    assert_difference('FoodPicture.count') do
      post :create, food_picture: { day: @food_picture.day, path: @food_picture.path }
    end

    assert_redirected_to food_picture_path(assigns(:food_picture))
  end

  test "should show food_picture" do
    get :show, id: @food_picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_picture
    assert_response :success
  end

  test "should update food_picture" do
    patch :update, id: @food_picture, food_picture: { day: @food_picture.day, path: @food_picture.path }
    assert_redirected_to food_picture_path(assigns(:food_picture))
  end

  test "should destroy food_picture" do
    assert_difference('FoodPicture.count', -1) do
      delete :destroy, id: @food_picture
    end

    assert_redirected_to food_pictures_path
  end
end
