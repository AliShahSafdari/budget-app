class Group < ApplicationRecord
  # Associations
  belongs_to :author, class_name: 'User'
  has_many :group_expense
  has_many :expenses, through: :group_expense

  # Attributes and Validations
  validates :name, presence: true
  validates :icon, presence: true
  

  def self.display_groups
    order(created_at: :desc)
  end

  def total_value
    expenses.sum(:amount)
  end
end
