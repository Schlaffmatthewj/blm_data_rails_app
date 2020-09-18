class Api::V1::LocationsController < ApplicationController
  before_action :set_api_v1_location, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/locations
  # GET /api/v1/locations.json
  def index
    @api_v1_locations = Api::V1::Location.all
    respond_to do |format|
      format.html { @api_v1_locations }
      format.json { render json: {results: @api_v1_locations, message: 'Locations have loaded successfully.'} }
    end
  end

  # GET /api/v1/locations/1
  # GET /api/v1/locations/1.json
  def show
    respond_to do |format|
      format.html { @api_v1_location }
      format.json { render json: {results: @api_v1_location, message: 'Locations have loaded successfully.'} }
    end
  end

  # GET /api/v1/locations/new
  def new
    @api_v1_location = Api::V1::Location.new
  end

  # GET /api/v1/locations/1/edit
  def edit
  end

  # POST /api/v1/locations
  # POST /api/v1/locations.json
  def create
    @api_v1_location = Api::V1::Location.new(api_v1_location_params)

    respond_to do |format|
      if @api_v1_location.save
        format.html { redirect_to @api_v1_location, notice: 'Location was successfully created.' }
        format.json { render json: { results: @api_v1_location, message: 'Location was successfully created.' } }
      else
        format.html { render :new }
        format.json { render json: { results: @api_v1_location.errors, message: 'Location was NOT successfully created.' } }
      end
    end
  end

  # PATCH/PUT /api/v1/locations/1
  # PATCH/PUT /api/v1/locations/1.json
  def update
    respond_to do |format|
      if @api_v1_location.update(api_v1_location_params)
        format.html { redirect_to @api_v1_location, notice: 'Location was successfully updated.' }
        format.json { render json: { location: @api_v1_location, message: 'Location was successfully updated.' } }
      else
        format.html { render :edit }
        format.json { render json: { results: @api_v1_location.errors, message: 'Location was NOT successfully update.' } }
      end
    end
  end

  # DELETE /api/v1/locations/1
  # DELETE /api/v1/locations/1.json
  def destroy
    @api_v1_location.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_locations_url, notice: 'Location was successfully destroyed.' }
      format.json { render json: { results: @api_v1_location, message: 'Location was successfully destroyed.' } }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_location
      @api_v1_location = Api::V1::Location.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_location_params
      params.require(:api_v1_location).permit(:name, :total, :white_total, :latinx_total, :black_total, :black_pop, :black_deaths, :black_likely, :latinx_likely)
    end
end
