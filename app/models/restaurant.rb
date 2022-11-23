class Restaurant < ApplicationRecord
  # when a restaurant is destroyed, all of its reviews should be destroyed as well.
  has_many :reviews, dependent: :destroy
  # a restaurant must have a name, an address and a category.
  validates :name, :address, :category, presence: true
  # the restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
