class AnimeProducer < ApplicationRecord
  belongs_to :anime
  belongs_to :producer

  # validation
  validates :anime_id, :producer_id, presence: true
end
