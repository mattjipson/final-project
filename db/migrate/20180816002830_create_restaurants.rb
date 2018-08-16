class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :comments
      t.string :website
      t.string :likes

      t.timestamps
    end
  end
end
