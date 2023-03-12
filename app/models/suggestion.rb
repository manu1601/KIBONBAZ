class Suggestion < ApplicationRecord
  belongs_to :tag
  belongs_to :restaurant
  has_one_attached :photo
  validates :tag_id, uniqueness: { scope: :restaurant_id }
end
