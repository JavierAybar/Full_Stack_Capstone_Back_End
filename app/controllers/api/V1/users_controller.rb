class Api::V1::UsersController < ApplicationController
  # TODO: update actions
  def create
    user = User.new(users_params)
    if user.save
      render json: { user: }
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_error
    end
  end

  def show
    user = User.find_by(id: params[:id])

    if user
      render json: { user: }
    else
      render json: { message: 'not found' }
    end
  end

  def destroy; end

  private

  def users_params
    params.require(:user).permit(:username)
  end
end
