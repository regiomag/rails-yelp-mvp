class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5],
    message: "%{value} is not a valid rating, shall be between 1 and 5" }
end
