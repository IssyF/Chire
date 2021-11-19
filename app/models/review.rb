class Review < ApplicationRecord
  belongs_to :booking
  validates :review_content, :review_rating, presence: true
end
