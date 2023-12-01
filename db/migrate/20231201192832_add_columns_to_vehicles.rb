class AddColumnsToVehicles < ActiveRecord::Migration[7.1]
  def change
    add_column :vehicles, :price, :decimal
  end
end
