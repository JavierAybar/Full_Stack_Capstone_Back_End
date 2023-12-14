class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :reservations

  def generate_jwt
    JWT.encode({ id:, exp: 60.days.from_now.to_i }, Rails.application.secrets.secret_key_base)
  end

  def jwt_payload
    super.merge('foo' => 'bar')
  end

  def admin?
    admin
  end
end
