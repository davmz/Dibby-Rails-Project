class Manga < ApplicationRecord
  belongs_to :media_type

  # validation
  validates :name, :chapter, :synopsis, :volumes, :status, presence: true
  validates :name, uniqueness: true
  validates :chapter, :popularity, :volumes, numericality: { only_integer: true }
end