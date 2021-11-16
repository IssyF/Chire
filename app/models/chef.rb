class Chef < ApplicationRecord
  CUISINES = %w[Chinese Italian Japanese French Indian Thai British American Spanish]

  belongs_to :user
  has_many :bookings

  validates :cuisine, presence: true, inclusion: { in: CUISINES }
  validates :years_experience, presence: true
end
