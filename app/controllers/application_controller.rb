class ApplicationController < ActionController::API
  protected

  def authenticate_admin!
    return if current_user&.admin?

    render json: { error: 'Not authorized' }, status: :unauthorized
  end
end
