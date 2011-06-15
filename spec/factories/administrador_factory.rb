# -*- encoding : utf-8 -*-
Factory.define :administrador do |u|

  u.sequence(:email) { |n| "administrador_#{n}@email.com" }
  u.password "123456"
  u.password_confirmation "123456"

end

