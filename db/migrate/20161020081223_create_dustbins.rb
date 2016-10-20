class CreateDustbins < ActiveRecord::Migration[5.0]
  def change
    create_table :dustbins do |t|
      t.integer :filled_level
      t.integer :temperature
      t.string :health, null: true
      t.string :location, null: true
      t.string :long_lat, null: true
      t.timestamps
    end
  end
end
