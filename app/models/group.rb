class Group < ApplicationRecord
  # Associations
  belongs_to :author, class_name: 'User'
  has_many :group_expenses

  # Attributes and Validations
  validates :name, presence: true
  validates :icon, presence: true
  

  def self.display_groups
    order(created_at: :desc)
  end

end
