# -*- encoding : utf-8 -*-
class Ability
  include CanCan::Ability

  def initialize(user)
    can :access, :rails_admin
    can :manage, :all
    cannot :destroy, Pagina
    cannot :create, Pagina
  end

end

