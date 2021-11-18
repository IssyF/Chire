class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef

  validates :start_date_time, :duration, presence: true
end
