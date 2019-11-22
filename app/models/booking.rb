class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spot

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date
  validate :start_date_after_today

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?
    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end

  def start_date_after_today
    return if end_date.blank? || start_date.blank?
    errors.add(:start_date, "must be after today") if start_date < Date.today
  end
end
