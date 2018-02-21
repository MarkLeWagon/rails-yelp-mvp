class Review < ApplicationRecord
  #must have a rating 0 to 5 that is an integer (numerically true)
  validates :rating, numericality: true, :inclusion => { in: [0, 1, 2, 3, 4, 5], allow_nil: false }
  # must have content
  validates :content, presence: true
  # tells there is a one to many relationship in db & says that a review must have a parent
  belongs_to :restaurant
end
