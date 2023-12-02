class ApplicationController < ActionController::API
  protected

  def authenticate_admin!
    unless current_user&.admin?
      render json: { error: 'Not authorized' }, status: :unauthorized
    end
  end
end
