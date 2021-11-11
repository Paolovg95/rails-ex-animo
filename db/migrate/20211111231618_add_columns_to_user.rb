class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :integer
    add_column :users, :category, :string
    add_column :users, :type, :string
  end
end
