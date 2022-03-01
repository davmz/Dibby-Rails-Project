class Manga < ApplicationRecord
  # validation
  validates :name, :chapter, :volume, :status, :synopsis, :publish, presence: true
  validates :score, numericality: true
  validates :popularity, numericality: { only_integer: true }
end
