# -*- encoding : utf-8 -*-
class Pagina < ActiveRecord::Base

  ID = {
    :apresentacao => 1,
    :programacao => 2,
    :organizacao => 3
  }

  validates_presence_of :titulo, :conteudo

end

