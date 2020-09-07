require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'Associations' do
    it { should belong_to(:event_creator) }
    it { should have_many(:invitations).with_foreign_key(:attended_event) }
    it { should have_many(:event_attendee).through(:invitations) }
  end
end
