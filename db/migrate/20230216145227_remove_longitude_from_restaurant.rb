class RemoveLongitudeFromRestaurant < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :longitude
  end
end
