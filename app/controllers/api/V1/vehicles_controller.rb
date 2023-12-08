class Api::V1::VehiclesController < ApplicationController
  # before_action :authenticate_admin!, only: %i[create destroy]

  def create
    @new_vehicle = Vehicle.new(api_params)

    if @new_vehicle.save
      render json: { message: 'Data saved successfully' }, status: :created
    else
      render json: { errors: @new_vehicle.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
    render json: @vehicle, status: :ok
  end

  def index
    @vehicles = Vehicle.order(created_at: :desc).all

    if @vehicles.empty?
      render json: { error: 'No vehicles found' }, status: :not_found
    else
      render json: @vehicles
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.reservations.destroy_all
    @vehicle.destroy
    render json: { message: 'Vehicle deleted' }, status: :ok
  end

  private

  def api_params
    params.require(:vehicle).permit(:name, :image, :description, :price)
  end
end
