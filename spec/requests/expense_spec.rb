require 'rails_helper'

RSpec.describe 'GroupController', type: :request do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(name: 'Teshht User', email: 'alikkkk@example.com', password: '123456')  }

  let(:group) {  Group.create(name: 'Test Recipe',icon:'http//:alish', author_id:user.id)  }

  let(:expense_params) { attributes_for(:expense) }


  before do
    sign_in user
  end

  it 'returns a successful response' do
    get new_group_expense_path(group)
    expect(response).to be_successful
  end
  it 'returns a successful response' do
    get group_expenses_path(group)
    expect(response).to be_successful
  end
end
