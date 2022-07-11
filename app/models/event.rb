class Event < ApplicationRecord
  has_many :attendee_events, foreign_key: :event_attended_id
  has_many :attendees, through: :attendee_events, source: :users

  belongs_to :creator, class_name: "User"
end
