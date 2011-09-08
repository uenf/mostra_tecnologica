# -*- encoding : utf-8 -*-
# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :estagio do |f|
  f.funcao 'Função'
  f.area 'Área'
  f.carga_horaria_semanal 30
  f.remuneracao 360.00
  f.inicio_do_expediente Time.now - 2.hours
  f.fim_do_expediente Time.now + 2.hours
  f.observacoes 'Texto de observação'
end

