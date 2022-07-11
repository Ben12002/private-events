class Event < ApplicationRecord
  has_many :attendee_events, foreign_key: :event_attended_id
  has_many :attendees, through: :attendee_events, source: :attendee

  belongs_to :creator, class_name: "User"

  scope :past, -> { where("date < ?", Date.today) }
  scope :future, -> { where("date >= ?", Date.today) }

  # def self.past 
  #   Event.where("date < ?", Date.today)
  # end

  # def self.future 
  #   Event.where("date >= ?", Date.today)
  # end
end
