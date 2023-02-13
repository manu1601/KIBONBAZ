class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :working_hours, dependent: :destroy
  has_many :suggestions, dependent: :destroy
  has_many :tags, through: :suggestions
  has_many :favourites, dependent: :destroy
  has_many :users, through: :favourites
  validates :name, presence: true
  validates :address, presence: true
  validates :contact_number, presence: true
  validates :lattitude, presence: true
  validates :longitude, presence: true
end
