class Api::V1::VehiclesController < ApplicationController
  # before_action :authenticate_admin!, only: %i[create destroy]

  def create
    @new_vehicle = Vehicle.new(api_params)

    if @new_vehicle.save
      render json: { message: 'Vehilcle saved successfully' }, status: :created
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
    @vehicle = Vehicle.find_by(id: params[:id])

    if @vehicle
      @vehicle.reservations.destroy_all
      if @vehicle.destroy
        render json: { message: 'Vehicle deleted' }, status: :ok
      else
        render json: { errors: 'Vehicle could not be deleted' }, status: :unprocessable_entity
      end
    else
      render json: { errors: 'Vehicle not found' }, status: :not_found
    end
  end

  private

  def api_params
    params.require(:vehicle).permit(:name, :image, :description, :price)
  end
end
