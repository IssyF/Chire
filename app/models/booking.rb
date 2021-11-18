class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef

  validates :date, :time, :duration, presence: true
end
