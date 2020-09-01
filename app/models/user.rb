class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, foreign_key: :event_creator_id, class_name: 'Event'
  has_many :invitations, foreign_key: :event_attendee_id, class_name: 'Invitation'
  has_many :attended_events, through: :invitations, source: :attended_event_id
end
