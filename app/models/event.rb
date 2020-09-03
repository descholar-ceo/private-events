class Event < ApplicationRecord
  belongs_to :event_creator, class_name: 'User'
  has_many :invitations, foreign_key: :attended_event
  has_many :event_attendee, through: :invitations, source: :event_attendee

  scope :all_past_events, -> {where(["event_date < ?", Date.today])}
  scope :all_upcoming_events, -> {where(["event_date > ?", Date.today])}
end
