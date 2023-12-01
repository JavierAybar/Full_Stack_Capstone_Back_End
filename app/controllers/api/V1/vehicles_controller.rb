class Api::V1::VehiclesController < ApplicationController
  # TODO: update actions
  def create; end

  def show
    @vehicle = Vehicle.find(params[:id])
    render json: @vehicle, status: :ok
  end

  def index; end

  def destroy; end
end
