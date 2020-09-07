require 'rails_helper'

describe User, type: :model do
  describe 'associations' do
    it { should have_many(:events) }
  end
end
