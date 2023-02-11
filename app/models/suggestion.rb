class Suggestion < ApplicationRecord
  belongs_to :tag
  belongs_to :restaurant
end
