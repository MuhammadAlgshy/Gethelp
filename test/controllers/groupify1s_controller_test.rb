require 'test_helper'

class Groupify1sControllerTest < ActionController::TestCase
  setup do
    @groupify1 = groupify1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groupify1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groupify1" do
    assert_difference('Groupify1.count') do
      post :create, groupify1: {  }
    end

    assert_redirected_to groupify1_path(assigns(:groupify1))
  end

  test "should show groupify1" do
    get :show, id: @groupify1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @groupify1
    assert_response :success
  end

  test "should update groupify1" do
    patch :update, id: @groupify1, groupify1: {  }
    assert_redirected_to groupify1_path(assigns(:groupify1))
  end

  test "should destroy groupify1" do
    assert_difference('Groupify1.count', -1) do
      delete :destroy, id: @groupify1
    end

    assert_redirected_to groupify1s_path
  end
end
