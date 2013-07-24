require 'test_helper'

class ProTeamsControllerTest < ActionController::TestCase
  setup do
    @pro_team = pro_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pro_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pro_team" do
    assert_difference('ProTeam.count') do
      post :create, pro_team: { handle: @pro_team.handle, image_url: @pro_team.image_url, name: @pro_team.name }
    end

    assert_redirected_to pro_team_path(assigns(:pro_team))
  end

  test "should show pro_team" do
    get :show, id: @pro_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pro_team
    assert_response :success
  end

  test "should update pro_team" do
    patch :update, id: @pro_team, pro_team: { handle: @pro_team.handle, image_url: @pro_team.image_url, name: @pro_team.name }
    assert_redirected_to pro_team_path(assigns(:pro_team))
  end

  test "should destroy pro_team" do
    assert_difference('ProTeam.count', -1) do
      delete :destroy, id: @pro_team
    end

    assert_redirected_to pro_teams_path
  end
end
