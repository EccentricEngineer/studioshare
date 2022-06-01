class Studio < ApplicationRecord
  belongs_to :user

  has_many :users
  has_many :reviews
  has_many :reservations

  validates :name, :country, :city, :address, :capacity, presence: true
end
