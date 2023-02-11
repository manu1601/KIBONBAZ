class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :working_hours, dependent: :destroy
  has_many :favourites
  has_many :tags
  validates :name, presence: true
  validates :address, presence: true
  validates :contact_number, presence: true
  validates :lattitude, presence: true
  validates :longitude, presence: true
end
