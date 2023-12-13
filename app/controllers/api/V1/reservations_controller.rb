class Api::V1::ReservationsController < ApplicationController
  # before_action :authenticate_admin!, only: %i[create destroy]
  # TODO: update according to user and vehicle
  def create
    add_reservation = Reservation.new(reservations_params)
    if add_reservation.save
      render json: add_reservation
    else
      render json: { errors: add_reservation.errors.full_messages }, status: :unprocessable_error
    end
  end

  def update
    # a PUT method that require the reservation id
    # /api/v1/reservations/:id
    update_reservation = Reservation.update(reservations_params)
    if update_reservation.save
      render json: { update_reservation: }
    else
      render json: { errors: update_reservation.errors.full_messages }, status: :unprocessable_error
    end
  end

  def show
    show_reservation = Reservation.find_by(id: params[:id])

    if show_reservation
      render json: { show_reservation: }
    else
      render json: { message: 'not found' }
    end
  end

  def index
    # TODO: show all the reservations of the current authenticated user
    # all_reservations = Reservation.where(user_id: @current_user)
    all_reservations = Reservation.all

    if all_reservations
      render json: all_reservations
    else
      render json: { error: 'no reservation yet' }
    end
  end

  # a DELETE method that require the reservation id
  # /api/v1/reservations/:id
  def destroy
    delete_reservation = Reservation.find_by(id: params[:id])

    if delete_reservation&.destroy
      render json: { message: 'Reservation successfully deleted' }
    else
      render json: { errors: 'Reservation could not be found or not deleted' }, status: :unprocessable_entity
    end
  end

  private

  def reservations_params
    params.require(:reservation).permit(:date, :city, :user_id, :vehicle_id)
  end
end
