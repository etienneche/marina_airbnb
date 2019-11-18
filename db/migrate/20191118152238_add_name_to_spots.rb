class AddNameToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :name, :string
  end
end
