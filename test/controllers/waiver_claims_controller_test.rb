require 'test_helper'

class WaiverClaimsControllerTest < ActionController::TestCase
  setup do
    @waiver_claim = waiver_claims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:waiver_claims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create waiver_claim" do
    assert_difference('WaiverClaim.count') do
      post :create, waiver_claim: { player_id: @waiver_claim.player_id, team_id: @waiver_claim.team_id }
    end

    assert_redirected_to waiver_claim_path(assigns(:waiver_claim))
  end

  test "should show waiver_claim" do
    get :show, id: @waiver_claim
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @waiver_claim
    assert_response :success
  end

  test "should update waiver_claim" do
    patch :update, id: @waiver_claim, waiver_claim: { player_id: @waiver_claim.player_id, team_id: @waiver_claim.team_id }
    assert_redirected_to waiver_claim_path(assigns(:waiver_claim))
  end

  test "should destroy waiver_claim" do
    assert_difference('WaiverClaim.count', -1) do
      delete :destroy, id: @waiver_claim
    end

    assert_redirected_to waiver_claims_path
  end
end
