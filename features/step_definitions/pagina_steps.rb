# -*- encoding : utf-8 -*-

Dado /^que eu tenho uma página com título "([^"]*)"$/ do |titulo|
  @pagina = Factory.create :pagina, :titulo => titulo
end

Dado /^que eu tenho uma página com título "([^"]*)" com id (\d+)$/ do |titulo, id|
  @pagina = Factory.create :pagina, :titulo => titulo, :id => id.to_i
end

