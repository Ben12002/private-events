class AttendeeEvent < ApplicationRecord
  belongs_to :attendee, class_name: "User"
  belongs_to :attended_party, class_name: "Party"
end
