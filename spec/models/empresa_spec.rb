# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Empresa do

  after(:all) do
    Empresa.delete_all
  end

  it "should create a new instance given valid attributes" do
    Factory.create :empresa
  end

  should_validate_presence_of :nome, :cnpj, :nome_para_contato, :telefone

  should_allow_values_for :cnpj, "69.103.604/0001-60", "69103604000160"
  should_allow_values_for :site, "google.com", "http://google.com", "http://www.google.com", "http://google.com.br", "http://www.uenf.br"

  should_not_allow_values_for :cnpj, "00.103.604/0001-60", "00103604000160", "00.103.604"
  should_not_allow_values_for :site, "google", "dazero@praele.com"

  describe "deve validar" do
    context "a unicidade" do
      before(:each) do
        Factory.create :empresa, :cnpj => "69.103.604/0001-60"
      end

      should_validate_uniqueness_of :cnpj, :allow_blank => true
    end

    context "a presença da confirmação de senha" do
      it "quando estiver sendo criada" do
        empresa = Factory.build :empresa, :password_confirmation => ""
        empresa.save.should == false
        empresa = Factory.build :empresa, :password => "123456", :password_confirmation => "123456"
        empresa.save.should == true
      end

      it "quando estiver sendo alterada a senha" do
        empresa = Factory.create :empresa
        empresa.update_attributes(:password => "abcdef", :password_confirmation => "").should == false
        empresa.errors[:password_confirmation].should == [ "não pode ser vazio." ]
        empresa.update_attributes(:password => "", :password_confirmation => "")
        empresa.errors[:password_confirmation].should == []
      end

    end

  end

end

