class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end


  def show?
    true
  end

  def update?
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    user == record
  end
end
