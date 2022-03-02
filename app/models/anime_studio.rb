class AnimeStudio < ApplicationRecord
  belongs_to :anime
  belongs_to :studio

  # validation
  validates :anime_id, :studio_id, presence: true
end
