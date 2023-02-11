class Tag < ApplicationRecord
  belongs_to :restaurant
  validates :name_tag, presence: true
  validates :name_tag, uniqueness: true
  validates :name_tag, uniqueness: { scope: :restaurant_id }
end
