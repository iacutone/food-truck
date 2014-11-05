class Api::V1::TrucksController < ApplicationController
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
    puts params
    @truck = Truck.create(name: "Test")
    @truck.location << Location.create(longitude: params[:longitude], latitude: params[:latitude])
    @truck.save

    if @truck.location
      render json: @truck.location, status: :created, location: @truck
    else
      render json: @truck.errors, status: :unprocessable_entity
    end
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
