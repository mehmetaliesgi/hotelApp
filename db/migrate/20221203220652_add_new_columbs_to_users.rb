class AddNewColumbsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :tckn, :bigint
    add_column :users, :phone, :bigint
    add_column :users, :phone2, :bigint
    
  end
end
