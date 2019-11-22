class Review < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  validates :description, presence: true
  validates :description, length: { minimum: 10 }
end
