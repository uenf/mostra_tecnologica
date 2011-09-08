# -*- encoding : utf-8 -*-
class CreateEmpresas < ActiveRecord::Migration
  def self.up
    create_table :empresas do |t|
      t.string :nome
      t.text :descricao
      t.string :cnpj
      t.string :telefone
      t.string :nome_para_contato
      t.string :email
      t.string :site
      t.string :cep
      t.string :estado
      t.string :cidade
      t.string :bairro
      t.string :logradouro
      t.string :numero
      t.string :complemento

      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.confirmable

      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable

      t.timestamps
    end

    add_index :empresas, :email,                :unique => true
    add_index :empresas, :reset_password_token, :unique => true
    # add_index :empresas, :confirmation_token,   :unique => true
    # add_index :empresas, :unlock_token,         :unique => true

  end

  def self.down
    drop_table :empresas
  end
end

