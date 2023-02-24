class WorkingHour < ApplicationRecord
  belongs_to :restaurant
  validates :day, presence: true
  validates :opening_hours, presence: true
  validates :closing_hours, presence: true
  validates :day, uniqueness: { scope: :restaurant_id }
end
