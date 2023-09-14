require 'rails_helper'

RSpec.feature 'group ', type: :feature do
  let(:user) { User.create(name: 'Teshhdddt User', email: 'alikkddddkk@example.com', password: '123456') }

  it 'User navigates to the new group item form' do
    sign_in user

    visit 'groups'
    expect(page).to have_content('New group')
  end

  it 'User navigates to the new group' do
    sign_in user
    visit new_group_path
    expect(page).to have_content('New CATEGORY')
  end
end
