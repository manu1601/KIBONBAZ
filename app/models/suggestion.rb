class Suggestion < ApplicationRecord
  belongs_to :tag
  belongs_to :restaurant
  validates :tag_id, uniqueness: { scope: :restaurant_id }
end
