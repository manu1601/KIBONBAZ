class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :working_hours, dependent: :destroy
  has_many :suggestions, dependent: :destroy
  has_many :tags, through: :suggestions
  has_many :favourites, dependent: :destroy
  has_many :users, through: :favourites
  has_many_attached :photos
  validates :name, presence: true
  validates :address, presence: true
  validates :contact_number, presence: true
  validates :lattitude, presence: true
  validates :longitude, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
