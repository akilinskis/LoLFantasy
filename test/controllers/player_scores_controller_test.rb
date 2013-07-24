require 'test_helper'

class PlayerScoresControllerTest < ActionController::TestCase
  setup do
    @player_score = player_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_score" do
    assert_difference('PlayerScore.count') do
      post :create, player_score: { assists: @player_score.assists, deaths: @player_score.deaths, game_id: @player_score.game_id, kills: @player_score.kills, minions: @player_score.minions, player_id: @player_score.player_id }
    end

    assert_redirected_to player_score_path(assigns(:player_score))
  end

  test "should show player_score" do
    get :show, id: @player_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_score
    assert_response :success
  end

  test "should update player_score" do
    patch :update, id: @player_score, player_score: { assists: @player_score.assists, deaths: @player_score.deaths, game_id: @player_score.game_id, kills: @player_score.kills, minions: @player_score.minions, player_id: @player_score.player_id }
    assert_redirected_to player_score_path(assigns(:player_score))
  end

  test "should destroy player_score" do
    assert_difference('PlayerScore.count', -1) do
      delete :destroy, id: @player_score
    end

    assert_redirected_to player_scores_path
  end
end
