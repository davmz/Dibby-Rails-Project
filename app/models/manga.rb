class Manga < ApplicationRecord
  has_many :manga_genres
  has_many :genres, through: :manga_genres

  # validation
  validates :name, :chapter, :volume, :status, :synopsis, :publish, presence: true
  validates :score, numericality: true
  validates :popularity, numericality: { only_integer: true }
end
