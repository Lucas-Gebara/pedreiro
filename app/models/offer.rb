class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true

  include PgSearch
  pg_search_scope :search_by_title,
    against: [:title],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
