class AddColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :birthdate, :date
    add_column :users, :bio, :text
    add_column :users, :location, :string
  end
end
