# -*- encoding : utf-8 -*-

def login(empresa)
  visit new_empresa_session_path
  fill_in("E-mail", :with => empresa.email)
  fill_in("Senha", :with => empresa.password)
  click_button("Enviar")
end

Dado /^que eu tenho uma empresa com nome "([^"]*)", e\-mail "([^"]*)" e senha "([^"]*)"$/ do |nome, email, senha|
  @empresa = Factory.create :empresa, :nome => nome, :email => email, :password => senha, :password_confirmation => senha
  @empresa.confirm!
end

Dado /^que eu estou logado$/ do
  login(@empresa)
end

Então /^eu devo ter (\d+) empresas?$/ do |quantidade|
  Empresa.all.count.should == quantidade.to_i
end

