require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'AliSirat', email: 'alisirat@gmail.com', password: '123456') }
  let(:group) { Group.new(name: 'Music', icon: 'http://icon.com', author: user) }

  it 'Group object must be valid' do
    expect(group).to be_valid
  end

  it 'Group has teh name' do
    expect(group.name).to eq('Music')
  end

  it 'Group has the icon' do
    expect(group.icon).to eq('http://icon.com')
  end
end
