class Api::V1::LocationsController < ApplicationController
  # GET api/v1/locations
  def index
    @locations = Location.all

    render json: @locations
  end

  # GET api/v1/locations/1
  def show
    @location = Location.find(params[:id])

    render json: @location
  end

  # POST api/v1/locations
  def create
    @location = Location.new(params[:location])

    if @location.save
      render json: @location, status: :created, location: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # PUT api/v1/locations/1
  def update
    @location = Location.find(params[:id])

    if @location.update_attributes(params[:location])
      head :no_content
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # DELETE api/v1/locations/1
  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    head :no_content
  end
end
