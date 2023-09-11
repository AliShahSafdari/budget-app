class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_many :expenses, foreign_key: 'author_id'
  has_many :groups, foreign_key: 'author_id'

  # Attributes and Validations
  validates :name, presence: true, length: { in: 3..25 }

end