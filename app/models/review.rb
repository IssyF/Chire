class Review < ApplicationRecord
  belongs_to :chef
  validates :review_content, :review_rating, presence: true
end
