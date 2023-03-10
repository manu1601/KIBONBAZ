class Restaurant < ApplicationRecord
  acts_as_favoritable
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :working_hours, dependent: :destroy
  has_many :suggestions, dependent: :destroy
  has_many :tags, through: :suggestions
  has_many_attached :photos
  validates :name, presence: true
  validates :address, presence: true
  validates :contact_number, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
