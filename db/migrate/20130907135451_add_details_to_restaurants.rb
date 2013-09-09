class AddDetailsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :postcode, :string
    add_column :restaurants, :cuisine, :string
  end
end
