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

ActiveRecord::Schema.define(version: 20160203034350) do

  create_table "consulta", force: :cascade do |t|
    t.decimal  "saldo",               precision: 10
    t.datetime "fechacrea"
    t.integer  "tuc_id",    limit: 4
  end

  add_index "consulta", ["tuc_id"], name: "index_consulta_on_tuc_id", using: :btree

  create_table "personas", force: :cascade do |t|
    t.string   "nombre",    limit: 255
    t.string   "apellido",  limit: 255
    t.string   "pais",      limit: 255
    t.string   "email",     limit: 255
    t.datetime "fechacrea"
  end

  create_table "tucs", force: :cascade do |t|
    t.integer  "numerotarjeta", limit: 4
    t.datetime "fechacrea"
    t.integer  "usuario_id",    limit: 4
  end

  add_index "tucs", ["usuario_id"], name: "index_tucs_on_usuario_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "username",   limit: 255
    t.string   "pasword",    limit: 255
    t.datetime "fechacrea"
    t.integer  "persona_id", limit: 4
  end

  add_index "usuarios", ["persona_id"], name: "index_usuarios_on_persona_id", using: :btree

  add_foreign_key "consulta", "tucs"
  add_foreign_key "tucs", "usuarios"
  add_foreign_key "usuarios", "personas"
end
