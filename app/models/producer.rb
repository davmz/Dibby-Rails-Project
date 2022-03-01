class Producer < ApplicationRecord
  # validation
  validates :name, presence: true, uniqueness: true
end
