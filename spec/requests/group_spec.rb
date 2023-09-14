require 'rails_helper'

RSpec.describe 'GroupController', type: :request do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(name: 'Test User', email: 'ali@example.com', password: '123456')  }
  let(:group) {  Group.create(name: 'Test Recipe', author_id:user.id)  }

  before do
    sign_in user
  end

  describe 'GET #index' do
    it 'returns a successful response' do
      get groups_path
      expect(response).to have_http_status(:ok)
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #show' do
  it 'returns a successful response' do
    get groups_path(group)
    expect(response).to have_http_status(:ok)
  end
  end
  describe 'GET #new' do
    it 'returns a successful response' do
      get new_group_path
      expect(response).to have_http_status(:ok)
    end
  end

end
