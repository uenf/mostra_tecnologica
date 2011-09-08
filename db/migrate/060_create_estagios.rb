# -*- encoding : utf-8 -*-
class CreateEstagios < ActiveRecord::Migration
  def self.up
    create_table :estagios do |t|
      t.references :empresa

      t.string :funcao
      t.string :area
      t.integer :carga_horaria_semanal
      t.float :remuneracao
      t.time :inicio_do_expediente
      t.time :fim_do_expediente
      t.text :observacoes

      t.timestamps
    end
  end

  def self.down
    drop_table :estagios
  end
end

