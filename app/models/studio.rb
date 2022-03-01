class Studio < ApplicationRecord
  # validation
  validates :name, presence: true, uniqueness: true
end
