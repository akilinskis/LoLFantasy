require 'test_helper'

class TeamScoresControllerTest < ActionController::TestCase
  setup do
    @team_score = team_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_score" do
    assert_difference('TeamScore.count') do
      post :create, team_score: { game_id: @team_score.game_id, playerScoreADCarry: @team_score.playerScoreADCarry, playerScoreJungle: @team_score.playerScoreJungle, playerScoreMid: @team_score.playerScoreMid, playerScoreSupport: @team_score.playerScoreSupport, playerScoreTop: @team_score.playerScoreTop, pro_team_id: @team_score.pro_team_id }
    end

    assert_redirected_to team_score_path(assigns(:team_score))
  end

  test "should show team_score" do
    get :show, id: @team_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_score
    assert_response :success
  end

  test "should update team_score" do
    patch :update, id: @team_score, team_score: { game_id: @team_score.game_id, playerScoreADCarry: @team_score.playerScoreADCarry, playerScoreJungle: @team_score.playerScoreJungle, playerScoreMid: @team_score.playerScoreMid, playerScoreSupport: @team_score.playerScoreSupport, playerScoreTop: @team_score.playerScoreTop, pro_team_id: @team_score.pro_team_id }
    assert_redirected_to team_score_path(assigns(:team_score))
  end

  test "should destroy team_score" do
    assert_difference('TeamScore.count', -1) do
      delete :destroy, id: @team_score
    end

    assert_redirected_to team_scores_path
  end
end
