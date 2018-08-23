class AddLatitudeAndLongitudeToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :latitude, :decimal
    add_column :restaurants, :longitude, :decimal
  end
end
