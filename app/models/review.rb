class Review < ApplicationRecord
  belongs_to :reservation
  belongs_to :user
  belongs_to :studio

  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
