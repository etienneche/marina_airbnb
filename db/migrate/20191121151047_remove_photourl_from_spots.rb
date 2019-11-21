class RemovePhotourlFromSpots < ActiveRecord::Migration[6.0]
  def change

    remove_column :spots, :photo_url, :string
  end
end
