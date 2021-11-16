class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef

  #validates :start_date_time, presence: true
  #validates :end_date_time, presence: true
end
