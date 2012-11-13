class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    user ||= User.new # guest user (not logged in)
    if user.principal?
      can :manage, :all
    elsif user.teacher?
      can :manage, [Course, Student]
      can :read, [Group, User]
    else
      can :read, [Group, Student]
    end

  end
end
