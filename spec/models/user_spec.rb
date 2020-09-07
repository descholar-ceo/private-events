require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:events).with_foreign_key(:event_creator) }
    it { should have_many(:invitations).with_foreign_key(:event_attendee) }
    it { should have_many(:attended_event).through(:invitations) }
  end
end
