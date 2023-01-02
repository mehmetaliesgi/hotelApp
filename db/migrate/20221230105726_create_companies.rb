class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.text :address
      t.bigint :phone
      t.string :email
      t.string :website
      t.string :location_x
      t.string :location_y

      t.timestamps
    end
  end
end
