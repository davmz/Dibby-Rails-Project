class MediaType < ApplicationRecord
  has_many :mangas

  # validation
  validates :name, presence: true, uniqueness: true
end
