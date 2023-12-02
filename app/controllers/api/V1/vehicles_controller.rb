class Api::V1::VehiclesController < ApplicationController
  # TODO: update actions
  def create
    vehicle = Vehicle.new(vehicles_params)
    if vehicle.save
      render json: { vehicle: }
    else
      render json: { errors: vehicle.errors.full_messages }, status: :unprocessable_error
    end
  end

  def show
    vehicle = Vehicle.find_by(id: params[:id])

    if vehicle
      render json: { vehicle: }
    else
      render json: { message: 'not found' }
    end
  end

  def index
    vehicles = Vehicle.all
    render json: { vehicles: }
  end

  def destroy; end

  private

  def vehicles_params
    params.require(:vehicle).permit(:name, :description, :image)
  end
end
