# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160503161155) do

  create_table "avaliacoes", force: :cascade do |t|
    t.string   "nota"
    t.string   "comentario"
    t.integer  "Cliente_id"
    t.integer  "Evento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "avaliacoes", ["Cliente_id"], name: "index_avaliacoes_on_Cliente_id"
  add_index "avaliacoes", ["Evento_id"], name: "index_avaliacoes_on_Evento_id"

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "nacionalidade"
    t.string   "dtNasc"
    t.string   "cep"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "celular"
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "estabelecimentos", force: :cascade do |t|
    t.string   "cnpj"
    t.string   "empresa"
    t.string   "email"
    t.string   "senha"
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string   "descricao"
    t.string   "data"
    t.string   "horario"
    t.string   "local"
    t.integer  "estabelecimento_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "eventos", ["estabelecimento_id"], name: "index_eventos_on_estabelecimento_id"

  create_table "ingressos", force: :cascade do |t|
    t.string   "Tipo"
    t.float    "Valor"
    t.integer  "Evento_id"
    t.integer  "Cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ingressos", ["Cliente_id"], name: "index_ingressos_on_Cliente_id"
  add_index "ingressos", ["Evento_id"], name: "index_ingressos_on_Evento_id"

  create_table "reservas", force: :cascade do |t|
    t.string   "data"
    t.string   "hora"
    t.integer  "Cliente_id"
    t.integer  "Evento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reservas", ["Cliente_id"], name: "index_reservas_on_Cliente_id"
  add_index "reservas", ["Evento_id"], name: "index_reservas_on_Evento_id"

end
