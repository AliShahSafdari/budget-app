require 'rails_helper'

RSpec.describe 'GroupController', type: :request do
  let(:user) { User.create(name: 'Test User', email: 'ali@example.com', password: '123456') }
  let(:group) { Group.create(name: 'Test Recipe', user:) }

  context 'GET /index' do
    it 'returns http success' do
      get '/groups'
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end

    it 'render the index template' do
      get '/groups'
      expect(response).to render_template('groups/index')
    end

    it 'returns http success' do
      get '/groups/new'
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end
  end
end
