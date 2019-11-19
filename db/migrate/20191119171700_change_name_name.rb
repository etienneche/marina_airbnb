class ChangeNameName < ActiveRecord::Migration[6.0]
  def change
    rename_column :spots, :name, :spot_name
  end
end
