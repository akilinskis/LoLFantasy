require 'test_helper'

class GlobalsControllerTest < ActionController::TestCase
  setup do
    @global = globals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:globals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create global" do
    assert_difference('Global.count') do
      post :create, global: { current_season: @global.current_season, current_split: @global.current_split }
    end

    assert_redirected_to global_path(assigns(:global))
  end

  test "should show global" do
    get :show, id: @global
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @global
    assert_response :success
  end

  test "should update global" do
    patch :update, id: @global, global: { current_season: @global.current_season, current_split: @global.current_split }
    assert_redirected_to global_path(assigns(:global))
  end

  test "should destroy global" do
    assert_difference('Global.count', -1) do
      delete :destroy, id: @global
    end

    assert_redirected_to globals_path
  end
end
