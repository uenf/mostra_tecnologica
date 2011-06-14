# -*- encoding : utf-8 -*-

include ActionView::Helpers::NumberHelper

RailsAdmin.authorize_with :cancan

RailsAdmin.config do |config|

  config.navigation.max_visible_tabs 7

  config.models do
    fields_of_type :date do
      date_format :default
    end
  end

  config.model Administrador do
    sort_by :email
    sort_reverse false

    list do
      field :email
      field :current_sign_in_at
    end

    edit do
      field :email
      field :password do
        label "Senha"
      end
      field :password_confirmation do
        label "Repita a senha"
        help "Repita a senha."
      end
    end
  end

end

