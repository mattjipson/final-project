class RemoveCommentsFromRestaurants < ActiveRecord::Migration[5.1]
  def change
    
        remove_column :restaurants, :comments

  end
end
