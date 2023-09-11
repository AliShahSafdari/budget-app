# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new  # If user is not logged in, create a new guest user
      can :read, :all  # Regular users can read all resources
      can :manage, User, id: user.id
  end
end
