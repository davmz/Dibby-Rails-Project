class Manga < ApplicationRecord
  belongs_to :media_type

  # validation
  ## There can be the same name as they might be different
  ## media types. (i.e. 2 data for Black Bullet but one is
  ## light novel and the other one a manga).
  validates :name, :chapter, :volumes, :status, presence: true
  validates :chapter, :popularity, :volumes, numericality: { only_integer: true }
end