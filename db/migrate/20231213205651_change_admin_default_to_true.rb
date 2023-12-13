class ChangeAdminDefaultToTrue < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :admin, from: false, to: true
  end
end
