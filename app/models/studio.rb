class Studio < ApplicationRecord
  has_one_attached :photo

  belongs_to :user #vendor

  has_many :users #visitors
  has_many :reviews
  has_many :reservations

  validates :name, :address, presence: true
end
