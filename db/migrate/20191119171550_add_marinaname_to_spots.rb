class AddMarinanameToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :marina_name, :string
  end
end
