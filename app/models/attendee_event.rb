class AttendeeEvent < ApplicationRecord
  belongs_to :attendee, class_name: "User"

  # Doesn't work with:
  # belongs_to :attended_event, class_name: "Event"
  # shows error of: {"attended_event"=>["must exist"]}
  belongs_to :event_attended, class_name: "Event"

  # need to enforce uniqueness of attendee_id and event_attended_id
  
end
