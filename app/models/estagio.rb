# -*- encoding : utf-8 -*-
class Estagio < ActiveRecord::Base
  belongs_to :empresa

  validates_presence_of :empresa_id, :funcao
  validates_numericality_of :remuneracao, :greater_than => 0, :allow_blank => true
  validates_numericality_of :carga_horaria_semanal, :greater_than => 0, :allow_blank => true
end

