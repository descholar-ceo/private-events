class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, foreign_key: :event_creator, class_name: 'Event'
  has_many :invitations, foreign_key: :event_attendee, class_name: 'Invitation'
  has_many :attended_event, through: :invitations, source: :attended_event

  scope :all_past_events, -> {where(["event_date < ?", Date.today])}
  scope :all_upcoming_events, -> {where(["event_date > ?", Date.today])}
end
