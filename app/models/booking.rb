class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef
  has_many :reviews

  validates :date, :time, :duration, presence: true
end
