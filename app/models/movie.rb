class Movie < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_query, against: [:title, :director, :year, :rating, :cast, :genre],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  validates :title, presence: true, uniqueness: true
  validates :director, presence: true
  validates :rating, presence: true
end
