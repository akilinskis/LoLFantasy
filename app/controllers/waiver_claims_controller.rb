class WaiverClaimsController < ApplicationController
  before_action :set_waiver_claim, only: [:show, :edit, :update, :destroy]

  # GET /waiver_claims
  # GET /waiver_claims.json
  def index
    @waiver_claims = WaiverClaim.all
  end

  # GET /waiver_claims/1
  # GET /waiver_claims/1.json
  def show
  end

  # GET /waiver_claims/new
  def new
    @waiver_claim = WaiverClaim.new
  end

  # GET /waiver_claims/1/edit
  def edit
  end

  # POST /waiver_claims
  # POST /waiver_claims.json
  def create
    @waiver_claim = WaiverClaim.new(waiver_claim_params)

    respond_to do |format|
      if @waiver_claim.save
        format.html { redirect_to @waiver_claim, notice: 'Waiver claim was successfully created.' }
        format.json { render action: 'show', status: :created, location: @waiver_claim }
      else
        format.html { render action: 'new' }
        format.json { render json: @waiver_claim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waiver_claims/1
  # PATCH/PUT /waiver_claims/1.json
  def update
    respond_to do |format|
      if @waiver_claim.update(waiver_claim_params)
        format.html { redirect_to @waiver_claim, notice: 'Waiver claim was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @waiver_claim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waiver_claims/1
  # DELETE /waiver_claims/1.json
  def destroy
    @waiver_claim.destroy
    respond_to do |format|
      format.html { redirect_to waiver_claims_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waiver_claim
      @waiver_claim = WaiverClaim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waiver_claim_params
      params.require(:waiver_claim).permit(:player_id, :team_id)
    end
end
