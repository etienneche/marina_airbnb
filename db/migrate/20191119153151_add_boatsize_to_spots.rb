class AddBoatsizeToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :boat_size, :integer
  end
end
