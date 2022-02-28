class Anime < ApplicationRecord
  belongs_to :type

  # validation
  validates :name, :episode, :status, :season, :duration, :rating, :score, :vote, :description, presence :true
  validates :name, uniqueness: true
  validates :vote, numericality: { only_integer: true }
  validates :score, numericality: true
end
