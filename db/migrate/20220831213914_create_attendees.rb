class CreateAttendees < ActiveRecord::Migration[7.0]
  def change
    create_table :attendees do |t|
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
