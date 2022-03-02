class MangaGenre < ApplicationRecord
  belongs_to :manga
  belongs_to :genre

  # validation
  validates :manga_id, :genre_id, presence: true
end
