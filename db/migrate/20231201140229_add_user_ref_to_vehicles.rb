class AddUserRefToVehicles < ActiveRecord::Migration[7.1]
  def change
    add_reference :vehicles, :user, foreign_key: true
  end
end
