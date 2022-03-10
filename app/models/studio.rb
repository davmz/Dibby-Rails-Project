class Studio < ApplicationRecord
  paginates_per 8

  has_many :anime_studios
  has_many :animes, through: :anime_studios

  # validation
  validates :name, presence: true, uniqueness: true
end
