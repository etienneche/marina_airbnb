class Spot < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :booking

  validates :name, presence: true
  validates :price_per_night, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :boat_size, numericality: true
end
