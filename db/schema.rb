# -*- encoding : utf-8 -*-
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 70) do

  create_table "administradores", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "administradores", ["email"], :name => "index_administradores_on_email", :unique => true
  add_index "administradores", ["reset_password_token"], :name => "index_administradores_on_reset_password_token", :unique => true

  create_table "empresas", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "cnpj"
    t.string   "telefone"
    t.string   "nome_para_contato"
    t.string   "email",                               :default => "", :null => false
    t.string   "site"
    t.string   "cep"
    t.string   "estado"
    t.string   "cidade"
    t.string   "bairro"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "complemento"
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "empresas", ["email"], :name => "index_empresas_on_email", :unique => true
  add_index "empresas", ["reset_password_token"], :name => "index_empresas_on_reset_password_token", :unique => true

  create_table "estagios", :force => true do |t|
    t.integer  "empresa_id"
    t.string   "funcao"
    t.string   "area"
    t.integer  "carga_horaria_semanal"
    t.float    "remuneracao"
    t.time     "inicio_do_expediente"
    t.time     "fim_do_expediente"
    t.text     "observacoes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inscricoes", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "cpf"
    t.string   "instituicao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paginas", :force => true do |t|
    t.string   "titulo"
    t.text     "conteudo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.string   "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_histories_on_item_and_table_and_month_and_year"

end
