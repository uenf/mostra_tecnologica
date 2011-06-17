# -*- encoding : utf-8 -*-
Mostra::Application.routes.draw do
  devise_for :administradores
  devise_for :empresas
  match "/apresentacao" => "paginas#apresentacao", :as => :apresentacao
  root :to => "paginas#index"
end

