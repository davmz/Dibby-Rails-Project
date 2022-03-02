class Anime < ApplicationRecord
  belongs_to :type
  has_many :anime_genres
  has_many :genres, through: :anime_genres

  has_many :anime_studios
  has_many :studios, through: :anime_studios

  has_many :anime_producers
  has_many :producers, through: :anime_producers

  # validation
  validates :name, :episode, :status, :season, :duration, :rating, :score, :vote, :description, presence: true
  validates :name, uniqueness: true
  validates :vote, numericality: { only_integer: true }
  validates :score, numericality: true
end