class AddColumnsToRestaurant < ActiveRecord::Migration[7.2]
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :address, :string
    add_column :restaurants, :phone_number, :integer
    add_column :restaurants, :category, :string
  end
end
