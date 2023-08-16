# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(admin)

    if admin.super_admin?
      can :read, Product
    end

    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
