class ProTeamsController < ApplicationController
  before_action :set_pro_team, only: [:show, :edit, :update, :destroy]

  # GET /pro_teams
  # GET /pro_teams.json
  def index
    @pro_teams = ProTeam.all
  end

  # GET /pro_teams/1
  # GET /pro_teams/1.json
  def show
    @players = Player.where('pro_team_id = ?', params[:id])
  end

  # GET /pro_teams/new
  def new
    @pro_team = ProTeam.new
  end

  # GET /pro_teams/1/edit
  def edit
  end

  # POST /pro_teams
  # POST /pro_teams.json
  def create
    @pro_team = ProTeam.new(pro_team_params)

    respond_to do |format|
      if @pro_team.save
        format.html { redirect_to @pro_team, notice: 'Pro team was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pro_team }
      else
        format.html { render action: 'new' }
        format.json { render json: @pro_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pro_teams/1
  # PATCH/PUT /pro_teams/1.json
  def update
    respond_to do |format|
      if @pro_team.update(pro_team_params)
        format.html { redirect_to @pro_team, notice: 'Pro team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pro_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pro_teams/1
  # DELETE /pro_teams/1.json
  def destroy
    @pro_team.destroy
    respond_to do |format|
      format.html { redirect_to pro_teams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pro_team
      @pro_team = ProTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pro_team_params
      params.require(:pro_team).permit(:name, :handle, :image_url)
    end
end
