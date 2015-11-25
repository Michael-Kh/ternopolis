class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :room, index: true
      t.integer :room_id
      t.date :arrival
      t.date :leaving

      t.timestamps null: false
    end
  end
end
