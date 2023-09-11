require 'rails_helper'

RSpec.describe 'GroupController', type: :request do
  let(:user) { User.create(name: 'Test User', email: 'ali@example.com', password: '123456') }
  let(:expense) { Group.create(name: 'Test Recipe', user:) }

  context 'GET /index' do
    it 'returns http success' do
      get '/expenses'
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end

    it 'render the index template' do
      get '/expenses'
      expect(response).to render_template('expenses/index')
    end

    it 'returns http success' do
      get '/expenses/new'
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end
  end
end
