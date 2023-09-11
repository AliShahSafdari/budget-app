require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user) { User.create(name: 'Ali43', email: 'ali906@gmail.com', password: '123456') }
    let(:expense) { Expense.new(name: 'Music', amount: 10.32, author: user) }
  

  it 'Group object must be valid' do
    expect(expense).to be_valid
  end

  it 'Group has teh name' do
    expect(expense.name).to eq('Music')
  end

  it 'Group has the amount' do
    expect(expense.amount).to eq(10.32)
  end
end
