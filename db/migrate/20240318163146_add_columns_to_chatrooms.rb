class AddColumnsToChatrooms < ActiveRecord::Migration[7.1]
  def change
    add_reference :chatrooms, :asker, primary_key: :users, index: true
    add_reference :chatrooms, :receiver, primary_key: :users, index: true

    add_foreign_key :chatrooms, :users, column: :asker_id
    add_foreign_key :chatrooms, :users, column: :receiver_id
  end
end
