class Spot < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :reviews, through: :booking

  validates :marina_name, presence: true
  validates :price_per_night, presence: true
  validates :description, presence: true
  validates :address, presence: true
end
