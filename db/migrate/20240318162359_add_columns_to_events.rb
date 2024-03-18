class AddColumnsToEvents < ActiveRecord::Migration[7.1]
  def change
    add_reference :events, :hobby, null: false, foreign_key: true
    add_reference :events, :user, null: false, foreign_key: true
  end
end
