class CreateAttendeeEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :attendee_events do |t|
      t.belongs_to :attendee, foreign_key: {to_table: :users}
      t.belongs_to :event_attended, foreign_key: {to_table: :events}
      t.timestamps
    end
  end
end
