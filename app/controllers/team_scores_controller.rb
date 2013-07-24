class TeamScoresController < ApplicationController
  before_action :set_team_score, only: [:show, :edit, :update, :destroy]

  # GET /team_scores
  # GET /team_scores.json
  def index
    @team_scores = TeamScore.all
  end

  # GET /team_scores/1
  # GET /team_scores/1.json
  def show
  end

  # GET /team_scores/new
  def new
    @team_score = TeamScore.new
  end

  # GET /team_scores/1/edit
  def edit
  end

  # POST /team_scores
  # POST /team_scores.json
  def create
    @team_score = TeamScore.new(team_score_params)

    respond_to do |format|
      if @team_score.save
        format.html { redirect_to @team_score, notice: 'Team score was successfully created.' }
        format.json { render action: 'show', status: :created, location: @team_score }
      else
        format.html { render action: 'new' }
        format.json { render json: @team_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_scores/1
  # PATCH/PUT /team_scores/1.json
  def update
    respond_to do |format|
      if @team_score.update(team_score_params)
        format.html { redirect_to @team_score, notice: 'Team score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @team_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_scores/1
  # DELETE /team_scores/1.json
  def destroy
    @team_score.destroy
    respond_to do |format|
      format.html { redirect_to team_scores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_score
      @team_score = TeamScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_score_params
      params.require(:team_score).permit(:pro_team_id, :game_id, :playerScoreTop, :playerScoreJungle, :playerScoreMid, :playerScoreADCarry, :playerScoreSupport)
    end
end
