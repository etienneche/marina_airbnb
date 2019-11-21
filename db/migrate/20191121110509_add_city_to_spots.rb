class AddCityToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :city, :string
  end
end
