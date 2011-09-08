# -*- encoding : utf-8 -*-

require 'spec_helper'

describe Inscricao do
  context 'validações' do
    it { should_not have_valid(:nome).when('', nil) }
    it { should have_valid(:nome).when('fool') }

    it { should_not have_valid(:cpf).when('', nil, '00000000000')}
    it { should have_valid(:cpf).when('13157288776')}

    it { should_not have_valid(:email).when('emailincorreto@')}
    it { should have_valid(:email).when('foo@bar.com')}
  end
end

