class ChangeStatusColumnToRequests < ActiveRecord::Migration[7.1]
  def change
    change_column :requests, :status, :string, default: "pending"
  end
end
