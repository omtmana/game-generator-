class AddEventidToAttendees < ActiveRecord::Migration[7.0]
  def change
    add_column :attendees, :event_id, :integer
  end
end
