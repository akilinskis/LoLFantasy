class FreeAgentsController < ApplicationController
  before_action :set_free_agent, only: [:show, :edit, :update, :destroy]

  # GET /free_agents
  # GET /free_agents.json
  def index
    @free_agents = FreeAgent.all
  end

  # GET /free_agents/1
  # GET /free_agents/1.json
  def show
  end

  # GET /free_agents/new
  def new
    @free_agent = FreeAgent.new
  end

  # GET /free_agents/1/edit
  def edit
  end

  # POST /free_agents
  # POST /free_agents.json
  def create
    @free_agent = FreeAgent.new(free_agent_params)

    respond_to do |format|
      if @free_agent.save
        format.html { redirect_to @free_agent, notice: 'Free agent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @free_agent }
      else
        format.html { render action: 'new' }
        format.json { render json: @free_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /free_agents/1
  # PATCH/PUT /free_agents/1.json
  def update
    respond_to do |format|
      if @free_agent.update(free_agent_params)
        format.html { redirect_to @free_agent, notice: 'Free agent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @free_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /free_agents/1
  # DELETE /free_agents/1.json
  def destroy
    @free_agent.destroy
    respond_to do |format|
      format.html { redirect_to free_agents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_free_agent
      @free_agent = FreeAgent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def free_agent_params
      params.require(:free_agent).permit(:league_id)
    end
end
