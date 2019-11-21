class AddPhotoToSpot < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :photo, :string
  end
end
