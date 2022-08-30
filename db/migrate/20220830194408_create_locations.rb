class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :location_name
      t.string :time_slots
      t.string :location_type
      t.string :address

      t.timestamps
    end
  end
end
