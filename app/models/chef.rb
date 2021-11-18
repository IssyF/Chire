class Chef < ApplicationRecord
  CUISINES = %w[American🍔 British🍖 Chinese🥡 French🥖 Indian🍚 Italian🍝 Japanese🍣 Spanish🥘 Thai🍢].freeze

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
