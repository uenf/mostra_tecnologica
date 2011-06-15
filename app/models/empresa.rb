# -*- encoding : utf-8 -*-
class Empresa < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :nome, :cnpj, :telefone, :nome_para_contato, :email, :site,
                  :cep, :estado, :cidade, :bairro, :logradouro, :numero,
                  :complemento

  ESTADOS = ['Acre', 'Alagoas', 'Amapá', 'Amazonas', 'Bahia', 'Ceará',
              'Distrito Federal', 'Espírito Santo', 'Goiás', 'Maranhão',
              'Mato Grosso', 'Mato Grosso do Sul', 'Minas Gerais', 'Paraná',
              'Paraíba', 'Pará', 'Pernambuco', 'Piauí', 'Rio de Janeiro',
              'Rio Grande do Norte', 'Rio Grande do Sul', 'Rondônia', 'Roraima',
              'Santa Catarina', 'Sergipe', 'São Paulo', 'Tocantins']


  validates_presence_of :nome, :cnpj, :nome_para_contato, :telefone

  validates_presence_of :password_confirmation, :on => :create
  validates_presence_of :password_confirmation, :on => :update, :unless => :password_is_blank?

  validates_uniqueness_of :cnpj, :allow_blank => true

  acts_as_url :site

  usar_como_cnpj :cnpj

  def password_is_blank?
    self.password.blank?
  end

end

