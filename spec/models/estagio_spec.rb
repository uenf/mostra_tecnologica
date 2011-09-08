# -*- encoding : utf-8 -*-

require 'spec_helper'

describe Estagio do
  context 'validações' do
    context 'número de créditos' do
      it { should_not have_valid(:funcao).when('', nil) }
      it { should have_valid(:funcao).when('fooler') }

      it { should_not have_valid(:remuneracao).when('duzentos')}
      it { should_not have_valid(:remuneracao).when(-200.00)}
      it { should have_valid(:remuneracao).when(200.00)}

      it { should_not have_valid(:carga_horaria_semanal).when(-40, 'quarenta')}
      it { should have_valid(:carga_horaria_semanal).when(40)}
    end
  end
end

