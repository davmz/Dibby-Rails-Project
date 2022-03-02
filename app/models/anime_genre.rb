class AnimeGenre < ApplicationRecord
  belongs_to :anime
  belongs_to :genre

  # validation
  validates :anime_id, :genre_id, presence: true
end
