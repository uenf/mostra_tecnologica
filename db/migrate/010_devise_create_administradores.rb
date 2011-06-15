# -*- encoding : utf-8 -*-
class DeviseCreateAdministradores < ActiveRecord::Migration
  def self.up
    create_table(:administradores) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :administradores, :email,                :unique => true
    add_index :administradores, :reset_password_token, :unique => true
    # add_index :administradores, :confirmation_token,   :unique => true
    # add_index :administradores, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :administradores
  end
end
