class Type < ApplicationRecord
  has_many :animes

  # validation
  validates :name, presence: true, uniqueness: true
end