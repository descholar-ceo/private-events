require 'rails_helper'

RSpec.describe Invitation, type: :model do
  describe 'Associations' do
    it { should belong_to(:event_attendee) }
    it { should belong_to(:attended_event) }
  end
end
