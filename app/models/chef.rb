class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :cuisine, presence: true, inclusion: { in: %w[chinese italian japanese french indian thai british american spanish] }
  validates :years_experience, presence: true
end
