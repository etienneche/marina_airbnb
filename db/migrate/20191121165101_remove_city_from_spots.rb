class RemoveCityFromSpots < ActiveRecord::Migration[6.0]
  def change

    remove_column :spots, :city, :string
  end
end
