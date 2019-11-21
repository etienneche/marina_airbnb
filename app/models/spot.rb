class Spot < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :reviews, through: :booking
  has_many :bookings, dependent: :delete_all

  validates :marina_name, presence: true
  validates :price_per_night, presence: true
  validates :description, presence: true
  validates :address, presence: true
end
