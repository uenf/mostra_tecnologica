# -*- encoding : utf-8 -*-
class Inscricao < ActiveRecord::Base

  validates_presence_of :nome, :cpf
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }, :allow_blank => true
  usar_como_cpf :cpf
end

