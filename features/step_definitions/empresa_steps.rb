# -*- encoding : utf-8 -*-
Então /^eu devo ter (\d+) empresas?$/ do |quantidade|
  Empresa.all.count.should == quantidade.to_i
end

