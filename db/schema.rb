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

ActiveRecord::Schema.define(version: 20150121010330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: true do |t|
    t.date     "data"
    t.date     "data_entrega"
    t.decimal  "volume",       precision: 10, scale: 2
    t.integer  "formula_id"
    t.integer  "mp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "numero"
    t.boolean  "entregue"
  end

  add_index "batches", ["formula_id"], name: "index_batches_on_formula_id", using: :btree
  add_index "batches", ["mp_id"], name: "index_batches_on_mp_id", using: :btree

  create_table "embalagens", force: true do |t|
    t.decimal  "volume"
    t.text     "caracteristicas"
    t.integer  "tipo_id"
    t.integer  "material_id"
    t.integer  "unidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "embalagens", ["material_id"], name: "index_embalagens_on_material_id", using: :btree
  add_index "embalagens", ["tipo_id"], name: "index_embalagens_on_tipo_id", using: :btree
  add_index "embalagens", ["unidade_id"], name: "index_embalagens_on_unidade_id", using: :btree

  create_table "entradas", force: true do |t|
    t.integer  "mp_id"
    t.date     "receb"
    t.decimal  "qtde"
    t.string   "nf"
    t.string   "lote"
    t.date     "validade"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status_id"
  end

  add_index "entradas", ["mp_id"], name: "index_entradas_on_mp_id", using: :btree

  create_table "formulas", force: true do |t|
    t.string   "nome"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lista_embalagens", force: true do |t|
    t.integer  "batch_id"
    t.integer  "qtde"
    t.integer  "embalagem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lista_embalagens", ["batch_id"], name: "index_lista_embalagens_on_batch_id", using: :btree
  add_index "lista_embalagens", ["embalagem_id"], name: "index_lista_embalagens_on_embalagem_id", using: :btree

  create_table "lista_form_mps", force: true do |t|
    t.decimal  "quant",      precision: 8, scale: 2
    t.integer  "formula_id"
    t.integer  "mp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lista_form_mps", ["formula_id"], name: "index_lista_form_mps_on_formula_id", using: :btree
  add_index "lista_form_mps", ["mp_id"], name: "index_lista_form_mps_on_mp_id", using: :btree

  create_table "lista_prods", force: true do |t|
    t.integer  "formula_id"
    t.integer  "mp_id"
    t.decimal  "qtde",           precision: 10, scale: 2
    t.integer  "lista_prods_id"
    t.integer  "mps_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", force: true do |t|
    t.string   "tipo"
    t.string   "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mps", force: true do |t|
    t.string   "nome"
    t.string   "apelido"
    t.integer  "unidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mps", ["unidade_id"], name: "index_mps_on_unidade_id", using: :btree

  create_table "saidafisicas", force: true do |t|
    t.integer  "mp_id"
    t.integer  "batch_id"
    t.date     "exped"
    t.decimal  "qtde"
    t.string   "lote"
    t.string   "validade"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "saidafisicas", ["batch_id"], name: "index_saidafisicas_on_batch_id", using: :btree
  add_index "saidafisicas", ["mp_id"], name: "index_saidafisicas_on_mp_id", using: :btree

  create_table "saidas", force: true do |t|
    t.integer  "mp_id"
    t.date     "exped"
    t.decimal  "qtde"
    t.string   "nf"
    t.string   "lote"
    t.date     "validade"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "saidas", ["mp_id"], name: "index_saidas_on_mp_id", using: :btree

  create_table "statuses", force: true do |t|
    t.string   "tipo"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos", force: true do |t|
    t.string   "tipo"
    t.string   "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidades", force: true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
