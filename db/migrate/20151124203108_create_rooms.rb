class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_type
      t.text :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
