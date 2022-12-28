class AddToNewColumnsToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :room_size, :integer
    add_column :rooms, :bed_count, :integer
  end
end
