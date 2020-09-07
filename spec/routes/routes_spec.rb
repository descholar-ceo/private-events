require 'rails_helper'

RSpec.describe 'Homepage', type: :request do
  describe 'GET #index' do
    before { get root_path }
    it 'returns http success' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET #login' do
    before { get new_user_session_path }

    it 'returns http success' do
      expect(response).to have_http_status(200)
    end
    it { should render_template('new') }
  end
end
