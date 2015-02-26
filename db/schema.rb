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

ActiveRecord::Schema.define(version: 20150226200216) do

  create_table "account_suppliers", force: :cascade do |t|
    t.string   "no_cuenta",    limit: 255
    t.string   "titular",      limit: 255
    t.string   "fecha_expira", limit: 255
    t.integer  "codigo",       limit: 4
    t.integer  "supplier_id",  limit: 4
    t.integer  "bank_id",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "account_suppliers", ["bank_id"], name: "index_account_suppliers_on_bank_id", using: :btree
  add_index "account_suppliers", ["supplier_id"], name: "index_account_suppliers_on_supplier_id", using: :btree

  create_table "banks", force: :cascade do |t|
    t.string   "clave",        limit: 255
    t.string   "nombre_corto", limit: 255
    t.string   "razon_social", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "razon_social", limit: 255
    t.string   "tipo",         limit: 255
    t.string   "rfc",          limit: 255
    t.integer  "cp",           limit: 4
    t.string   "calle",        limit: 255
    t.string   "colonia",      limit: 255
    t.string   "ciudad",       limit: 255
    t.string   "no_exterior",  limit: 255
    t.string   "no_interior",  limit: 255
    t.string   "estado",       limit: 255
    t.string   "pais",         limit: 255
    t.string   "sitio_web",    limit: 255
    t.string   "telefono",     limit: 255
    t.string   "movil",        limit: 255
    t.string   "email",        limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "descripcion",       limit: 255
    t.string   "categoria",         limit: 255
    t.string   "subcategoria",      limit: 255
    t.string   "modelo",            limit: 255
    t.string   "presentacion",      limit: 255
    t.string   "fabricante",        limit: 255
    t.string   "url_fabricante",    limit: 255
    t.string   "url_driver",        limit: 255
    t.string   "url_ficha_tecnica", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "razon_social", limit: 255
    t.string   "tipo",         limit: 255
    t.string   "rfc",          limit: 255
    t.integer  "cp",           limit: 4
    t.string   "calle",        limit: 255
    t.string   "colonia",      limit: 255
    t.string   "ciudad",       limit: 255
    t.string   "no_exterior",  limit: 255
    t.string   "no_interior",  limit: 255
    t.string   "estado",       limit: 255
    t.string   "pais",         limit: 255
    t.string   "sitio_web",    limit: 255
    t.string   "telefono",     limit: 255
    t.string   "movil",        limit: 255
    t.string   "email",        limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "account_suppliers", "banks"
  add_foreign_key "account_suppliers", "suppliers"
end
