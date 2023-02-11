class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :contact_number, presence: true
  validates :longitude, presence: true
  validates :lattitude, presence: true
end
