require 'test_helper'

class UrsControllerTest < ActionController::TestCase
  setup do
    @ur = urs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:urs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ur" do
    assert_difference('Ur.count') do
      post :create, ur: { name: @ur.name }
    end

    assert_redirected_to ur_path(assigns(:ur))
  end

  test "should show ur" do
    get :show, id: @ur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ur
    assert_response :success
  end

  test "should update ur" do
    patch :update, id: @ur, ur: { name: @ur.name }
    assert_redirected_to ur_path(assigns(:ur))
  end

  test "should destroy ur" do
    assert_difference('Ur.count', -1) do
      delete :destroy, id: @ur
    end

    assert_redirected_to urs_path
  end
end
