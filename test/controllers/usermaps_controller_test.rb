require 'test_helper'

class UsermapsControllerTest < ActionController::TestCase
  setup do
    @usermap = usermaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usermaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usermap" do
    assert_difference('Usermap.count') do
      post :create, usermap: { address: @usermap.address, description: @usermap.description, latitude: @usermap.latitude, longitude: @usermap.longitude, title: @usermap.title }
    end

    assert_redirected_to usermap_path(assigns(:usermap))
  end

  test "should show usermap" do
    get :show, id: @usermap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usermap
    assert_response :success
  end

  test "should update usermap" do
    patch :update, id: @usermap, usermap: { address: @usermap.address, description: @usermap.description, latitude: @usermap.latitude, longitude: @usermap.longitude, title: @usermap.title }
    assert_redirected_to usermap_path(assigns(:usermap))
  end

  test "should destroy usermap" do
    assert_difference('Usermap.count', -1) do
      delete :destroy, id: @usermap
    end

    assert_redirected_to usermaps_path
  end
end
