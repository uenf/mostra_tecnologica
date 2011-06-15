# -*- encoding : utf-8 -*-
class Administrador < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  validates_presence_of :password_confirmation, :on => :create
  validates_presence_of :password_confirmation, :on => :update, :unless => :password_is_blank?

  def password_is_blank?
    self.password.blank?
  end

end

