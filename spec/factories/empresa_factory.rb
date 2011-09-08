# -*- encoding : utf-8 -*-

Factory.define :empresa do |f|
  f.nome "MyString"
  f.descricao "MyString"
  f.cnpj "69.103.604/0001-60"
  f.sequence(:email) { |n| "empresa_#{n}@email.com" }
  f.telefone "(22) 2222-2222"
  f.site "www.google.com"
  f.nome_para_contato "Fulano"
  f.cidade "MyString"
  f.estado "Bahia"
  f.cep "28015200"
  f.bairro "MyString"
  f.logradouro "MyString"
  f.numero "MyString"
  f.complemento "MyString"
  f.password "MyString"
  f.password_confirmation "MyString"
end

