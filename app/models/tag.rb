class Tag < ApplicationRecord
  has_one_attached :photo
  has_many :suggestions, dependent: :destroy
  has_many :restaurants, through: :suggestions
  validates :name_tag, presence: true
  validates :name_tag, uniqueness: true
end
