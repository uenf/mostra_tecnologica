# -*- encoding : utf-8 -*-
class PaginasController < ApplicationController
  def index
    @paginas = Pagina.all
  end

  def apresentacao
    @pagina = Pagina.find(Pagina::ID[:apresentacao])
  end
end

