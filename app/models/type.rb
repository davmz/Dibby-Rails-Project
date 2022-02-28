class Type < ApplicationRecord
  has_many :animes

  # validation
  validates :name, presence: true, uniqueness: true

  # static function
  def self.ordered_by_animes
    self.select("types.*")
    .select("COUNT(types.id) as anime_count")
    .left_joins(:animes)
    .group("types.id")
    .order("anime_count DESC")
  end
end