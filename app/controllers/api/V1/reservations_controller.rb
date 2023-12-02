class Api::V1::ReservationsController < ApplicationController
  # TODO: update according to user and vehicle
  def create
    reservation = Reservation.new(reservations_params)
    if reservation.save
      render json: { reservation: }
    else
      render json: { errors: reservation.errors.full_messages }, status: :unprocessable_error
    end
  end

  def update
    # a PUT method that require the reservation id
    # /api/v1/reservations/:id
    reservation = Reservation.update(reservations_params)
    if reservation.save
      render json: { reservation: }
    else
      render json: { errors: reservation.errors.full_messages }, status: :unprocessable_error
    end
  end

  def show
    reservation = Reservation.find_by(id: params[:id])

    if reservation
      render json: { reservation: }
    else
      render json: { message: 'not found' }
    end
  end

  def index
    # TODO: show all the reservations of the current authenticated user
    # reservations = Reservation.where(user_id: @current_user)
    reservations = Reservation.all

    if reservations
      render json: { reservations: }
    else
      render json: { error: 'no reservation yet' }
    end
  end

  # a DELETE method that require the reservation id
  # /api/v1/reservations/:id
  def destroy
    reservation = Reservation.find(params[:id]).destroy
    render json: { destroy: reservation }
  end

  private

  def reservations_params
    params.require(:reservation).permit(:date, :city, :user_id, :vehicle_id)
  end
end
