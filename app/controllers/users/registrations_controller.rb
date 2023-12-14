class Users::RegistrationsController < Devise::RegistrationsController
  include RackSessionFix
  respond_to :json

  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def respond_with(resource, _opts = {})
    if request.method == 'POST' && resource.persisted?
      auth_token = resource.generate_jwt
      render json: {
        status: { code: 200, message: 'Registration successful.' },
        data: UserSerializer.new(resource).serializable_hash[:data][:attributes],
        token: auth_token
      }, status: :ok
    elsif request.method == 'DELETE'
      render json: {
        status: { code: 200, message: 'Account deleted successfully.' }
      }, status: :ok
    else
      render json: {
        status: { code: 422, message: "User couldn't be created#{resource.errors.full_messages.to_sentence}" }
      }, status: :unprocessable_entity
    end
  end
end
