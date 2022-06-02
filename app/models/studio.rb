class Studio < ApplicationRecord
  has_one_attached :photo_url

  belongs_to :user
  has_many :users
  has_many :reviews
  has_many :reservations

  def self.search(search)
    where("address ILIKE ?", "%#{search}%")
  end

  validates :name, :address, presence: true
end
