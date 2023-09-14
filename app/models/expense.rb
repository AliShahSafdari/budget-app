class Expense < ApplicationRecord
  # Associations
  belongs_to :author, class_name: 'User'
  has_many :group_expenses, dependent: :destroy
  has_many :groups, through: :group_expenses


  # Attributes and Validations
  validates :name, presence: true
  validates :amount, presence: true
end
