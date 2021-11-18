class Chef < ApplicationRecord
  CUISINES = %w[Chinese Italian Japanese French Indian Thai British American Spanish].freeze

  belongs_to :user
  has_many :bookings

  validates :cuisine, presence: true, inclusion: { in: CUISINES }
  validates :years_experience, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_cuisine,
    against: [ :cuisine ],
    using: {
      tsearch: { prefix: true }
    }

end
