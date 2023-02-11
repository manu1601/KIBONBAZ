class RemoveRestaurantReferenceFromTags < ActiveRecord::Migration[7.0]
  def change
    remove_reference :tags, :restaurant, index: true
  end
end
