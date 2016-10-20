class CreateDustbins < ActiveRecord::Migration[5.0]
  def change
    create_table :dustbins do |t|
      t.decimal :filled_level
      t.decimal :temperature
      t.string :health
      t.string :location
      t.string :long_lat
      t.timestamps
    end
  end
end
