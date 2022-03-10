class Manga < ApplicationRecord
  paginates_per 12

  has_many :manga_genres
  has_many :genres, through: :manga_genres

  # validation
  validates :name, :chapter, :volume, :status, :synopsis, :publish, presence: true
  validates :score, numericality: true
  validates :popularity, numericality: { only_integer: true }

  after_commit :create_search_entry, on: :create
  after_commit :update_search_entry, on: :update
  after_commit :destroy_search_entry, on: :destroy
end
