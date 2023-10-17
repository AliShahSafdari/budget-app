require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.create(name: 'Sirat', email: 'siratali@gmail.com', password: '123456') }
  let(:group) { Group.new(name: 'Music', icon: 'http://icon.com', author: user) }
  let(:expense) { Expense.new(name: 'Music', amount: 10.32, author: user) }
  let(:group_expense) { GroupExpense.new(group:, expense:) }

  it 'Group_Expense object must be valid' do
    expect(group_expense).to be_valid
  end
end
