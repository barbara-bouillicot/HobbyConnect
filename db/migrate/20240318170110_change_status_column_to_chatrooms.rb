class ChangeStatusColumnToChatrooms < ActiveRecord::Migration[7.1]
  def change
    change_column :chatrooms, :status, :string, default: "pending"
  end
end
