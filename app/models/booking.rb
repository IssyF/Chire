class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef
  has_one :review

  validates :date, :time, :duration, presence: true
end
