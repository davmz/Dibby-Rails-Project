class Page < ApplicationRecord
  # validation
  validates :title, :content, :permalink, presence: true
  validates :permalink, uniqueness: true
end
