class WorkingHour < ApplicationRecord
  belongs_to :restaurant
  validates :day, uniqueness: true
  validates :opening_hours, presence: true
  validates :closing_hours, presence: true
  validates :opening_hours, uniqueness: { scope: :closing_hours }
end
