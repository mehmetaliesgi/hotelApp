class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :number
      t.integer :capacity
      t.decimal :price
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
