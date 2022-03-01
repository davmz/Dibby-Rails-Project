class Anime < ApplicationRecord
  belongs_to :type
  has_many :anime_genres
  has_many :genres, through: :anime_genres

  has_many :anime_studios
  has_many :studios, through: :anime_studios

  # validation
  validates :name, :episode, :status, :season, :duration, :rating, :score, :vote, :description, presence: true
  validates :name, uniqueness: true
  validates :vote, numericality: { only_integer: true }
  validates :score, numericality: true

  def genres_list
    self.genres.map(&:name).join(", ")
  end
end