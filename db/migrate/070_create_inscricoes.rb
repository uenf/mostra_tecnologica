# -*- encoding : utf-8 -*-
class CreateInscricoes < ActiveRecord::Migration
  def self.up
    create_table :inscricoes do |t|
      t.string :nome
      t.string :email
      t.string :cpf
      t.string :instituicao

      t.timestamps
    end
  end

  def self.down
    drop_table :inscricoes
  end
end

