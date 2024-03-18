class CreateSelectedHobbies < ActiveRecord::Migration[7.1]
  def change
    create_table :selected_hobbies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hobby, null: false, foreign_key: true

      t.timestamps
    end
  end
end
