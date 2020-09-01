class Event < ApplicationRecord
  belongs_to :event_creator_id, class_name: "User"
  has_many :event_attendees, through: :invitations, source: :event_attendee_id
  has_many :invitations, foreign_key: :attended_event_id
end
