class User < ApplicationRecord
  has_many :reservations

  def admin?
    admin
  end
end
