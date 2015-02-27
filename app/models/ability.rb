class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user
    if Rails.env.development?
      can :manage, :all
      return
    end
    default
  end

  private

  def default
    # SEE: https://github.com/ryanb/cancan/wiki/Abilities-in-Database
    can do |action, subject_type, subject|
      user.permissions.find_all_by_action(aliases_for_action(action)).any? do |permission|
        permission.subject_type == subject_type.to_s &&
          (subject.nil? || permission.subject_id.nil? || permission.subject_id == subject.id)
      end
    end
  end
end
