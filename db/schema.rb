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

ActiveRecord::Schema.define(version: 20150106181110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "formulas", force: true do |t|
    t.string   "nome"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "mps", force: true do |t|
    t.string   "nome"
    t.string   "apelido"
    t.integer  "unidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mps", ["unidade_id"], name: "index_mps_on_unidade_id", using: :btree

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
