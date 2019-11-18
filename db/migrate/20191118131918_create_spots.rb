class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :price_per_night
      t.string :address
      t.text :description
      t.string :photo_url

      t.timestamps
    end
  end
end
