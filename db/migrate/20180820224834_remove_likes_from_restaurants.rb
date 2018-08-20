class RemoveLikesFromRestaurants < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :likes
  end
end
