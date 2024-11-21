class PartyItem < ApplicationRecord
  belongs_to :user
  # PG SEARCH
include PgSearch::Model
pg_search_scope :search_by_name,
  against: [ :name ],
  using: {
    tsearch: { prefix: true }
  }

  has_one_attached :photo
end
