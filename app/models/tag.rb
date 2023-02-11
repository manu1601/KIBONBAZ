class Tag < ApplicationRecord
  has_many :restaurants, through: :suggestions
  validates :name_tag, presence: true
  validates :name_tag, uniqueness: true
  
end
