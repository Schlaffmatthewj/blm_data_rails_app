class Api::V1::VictimsController < ApplicationController
  before_action :set_api_v1_victim, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/victims
  # GET /api/v1/victims.json
  def index
    @api_v1_victims = Api::V1::Victim.all
    respond_to do |format|
      format.html { @api_v1_victims }
      format.json { render json: {results: @api_v1_victims, message: 'Victims have loaded successfully.'} }
    end
  end

  # GET /api/v1/victims/1
  # GET /api/v1/victims/1.json
  def show
    respond_to do |format|
      format.html { @api_v1_victim }
      format.json { render json: {results: @api_v1_victim, message: 'Victim has loaded successfully.'} }
    end
  end

  # GET /api/v1/victims/new
  def new
    @api_v1_victim = Api::V1::Victim.new
  end

  # GET /api/v1/victims/1/edit
  def edit
  end

  # POST /api/v1/victims
  # POST /api/v1/victims.json
  def create
    @api_v1_victim = Api::V1::Victim.new(api_v1_victim_params)

    respond_to do |format|
      if @api_v1_victim.save
        format.html { redirect_to @api_v1_victim, notice: 'Victim was successfully created.' }
        format.json { render json: { results: @api_v1_victim, message: 'Victim was successfully created.' } }
      else
        format.html { render :new }
        format.json { render json: { results: @api_v1_victim.errors, message: 'Victim was NOT successfully created.' } }
      end
    end
  end

  # PATCH/PUT /api/v1/victims/1
  # PATCH/PUT /api/v1/victims/1.json
  def update
    respond_to do |format|
      if @api_v1_victim.update(api_v1_victim_params)
        format.html { redirect_to @api_v1_victim, notice: 'Victim was successfully updated.' }
        format.json { render json: { location: @api_v1_victim, message: 'Victim was successfully updated.' } }
      else
        format.html { render :edit }
        format.json { render json: { results: @api_v1_victim.errors, message: 'Victim was NOT successfully update.' } }
      end
    end
  end

  # DELETE /api/v1/victims/1
  # DELETE /api/v1/victims/1.json
  def destroy
    @api_v1_victim.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_victims_url, notice: 'Victim was successfully destroyed.' }
      format.json { render json: { results: @api_v1_victim, message: "Victim's data was successfully destroyed." } }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_victim
      @api_v1_victim = Api::V1::Victim.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_victim_params
      params.require(:api_v1_victim).permit(:name, :age, :when, :place, :details, :photo)
    end
end
