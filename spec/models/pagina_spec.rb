# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Pagina do
  context 'validações' do
    should_validate_presence_of :titulo
    should_validate_presence_of :conteudo
  end
end

