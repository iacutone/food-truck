class TrucksController < ApplicationController
  # GET /trucks
  # GET /trucks.json
  def index
    @trucks = Truck.all

    render json: @trucks
  end

  # GET /trucks/1
  # GET /trucks/1.json
  def show
    @truck = Truck.find(params[:id])

    render json: @truck
  end

  # POST /trucks
  def create
    @truck = Truck.new(params[:truck])

    if @truck.save
      render json: @truck, status: :created, location: @truck
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
