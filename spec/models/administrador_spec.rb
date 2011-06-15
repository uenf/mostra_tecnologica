# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Administrador do
  after(:all) do
    Administrador.delete_all
  end

  it "should create a new instance given valid attributes" do
    Factory.create :administrador
  end

  describe "deve validar" do

    context "a presença da confirmação de senha" do
      it "quando estiver sendo criada" do
        empresa = Factory.build :administrador, :password_confirmation => ""
        empresa.save.should == false
        empresa = Factory.build :administrador, :password => "123456", :password_confirmation => "123456"
        empresa.save.should == true
      end

      it "quando estiver sendo alterada a senha" do
        empresa = Factory.create :administrador
        empresa.update_attributes(:password => "abcdef", :password_confirmation => "").should == false
        empresa.errors[:password_confirmation].should == [ "não pode ser vazio." ]
        empresa.update_attributes(:password => "", :password_confirmation => "")
        empresa.errors[:password_confirmation].should == []
      end

    end

  end

end

