class Manga < ApplicationRecord
  belongs_to :media_type
  has_many :manga_genres
  has_many :genres, through: :manga_genres

  # validation
  ## There can be the same name as they might be different
  ## media types. (i.e. 2 data for Black Bullet but one is
  ## light novel and the other one a manga).
  validates :name, :chapter, :volumes, :status, presence: true
  validates :chapter, :popularity, :volumes, numericality: { only_integer: true }

  def manga_genres_list
    self.genres.map(&:name).join(", ")
  end
end