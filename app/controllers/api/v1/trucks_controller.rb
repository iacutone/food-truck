class Api::V1::TrucksController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  # GET api/v1/trucks
  def index
    @trucks = Truck.all

    render json: @trucks
  end

  # GET api/v1/trucks/1
  def show
    @truck = Truck.find(params[:id])

    render json: @truck
  end

  # POST /trucks
  def create
    @truck = Truck.create(name: "Test")
    @location = Location.create(longitude: params[:location][:longitude], 
                                latitude: params[:location][:latitude], 
                                truck_id: @truck.id)
    head :no_content
  end

  # PUT /trucks/1
  def update
    @truck = Truck.find(params[:id])

    if @truck.update_attributes(params[:truck])
      head :no_content
    else
      render json: @truck.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trucks/1
  def destroy
    @truck = Truck.find(params[:id])
    @truck.destroy

    head :no_content
  end
end
