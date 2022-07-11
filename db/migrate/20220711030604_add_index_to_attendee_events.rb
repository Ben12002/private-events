class AddIndexToAttendeeEvents < ActiveRecord::Migration[7.0]
  def change
    add_index :attendee_events, [:attendee_id, :event_attended_id], unique: true
  end
end
