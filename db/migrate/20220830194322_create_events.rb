class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :location_id
      t.datetime :time
      t.integer :user_id
      t.string :game_name

      t.timestamps
    end
  end
end
