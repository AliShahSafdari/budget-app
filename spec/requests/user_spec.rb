require 'rails_helper'

RSpec.describe 'UsersController', type: :request do
  describe 'GET /users' do
    let(:user) { User.new(name: 'Siratone', email: 'siratone@gamil.com', password: '123456') }
    it 'renders a successful response' do
      get '/users'
      expect(response).to be_successful # 3
    end

    it 'renders the index action with index view' do
      get '/users'
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
      expect(response.status).not_to eq(404)
    end

    it 'renders the one user' do
      get "/users/#{user.id}"
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end
  end
end
