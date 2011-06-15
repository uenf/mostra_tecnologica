# -*- encoding : utf-8 -*-
def admin(email, senha)
  visit "/admin"
  with_scope ('#administrador_new') do
    fill_in("E-mail", :with => email)
    fill_in("Senha", :with => senha)
    click_button("Sign in")
  end
end

Dado /^que eu sou um administrador logado$/ do
  @usuario = Factory.create :administrador,
                            :email => "admin@admin.com",
                            :password => "123456",
                            :password_confirmation => "123456"

  admin(@usuario.email, "123456")
end

