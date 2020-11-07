class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :team_name, null: false
      t.string :password_digest
      t.timestamps
    end
  end
end
