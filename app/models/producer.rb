class Producer < ApplicationRecord
  paginates_per 8

  has_many :anime_producers
  has_many :animes, through: :anime_producers

  # validation
  validates :name, presence: true, uniqueness: true
end
