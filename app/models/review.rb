class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  # the rating should be a number between 0 and 5 and should not be a float.
  validates :rating, inclusion: { in: (0..5).to_a }, numericality: { only_integer: true }
end
