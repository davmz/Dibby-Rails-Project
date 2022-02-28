class Genre < ApplicationRecord
  has_many :anime_genres
  has_many :animes, through: :anime_genres

  # validation
  validates :name, presence: true, uniqueness: true
end
