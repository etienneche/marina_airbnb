class RemoveBookingidFromReviews < ActiveRecord::Migration[6.0]
  def change

    remove_column :reviews, :booking_id, :bigint
  end
end
