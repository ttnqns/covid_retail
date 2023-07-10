# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_10_141404) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nombre"
    t.bigint "tipoCliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_clientes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clientes_on_reset_password_token", unique: true
    t.index ["tipoCliente_id"], name: "index_clientes_on_tipoCliente_id"
  end

  create_table "ordenes", force: :cascade do |t|
    t.bigint "producto_id", null: false
    t.bigint "cliente_id", null: false
    t.bigint "tipo_pago_id", null: false
    t.integer "monto_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_ordenes_on_cliente_id"
    t.index ["producto_id"], name: "index_ordenes_on_producto_id"
    t.index ["tipo_pago_id"], name: "index_ordenes_on_tipo_pago_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.integer "precio"
    t.string "descripcion"
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_clientes", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_pagos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ordenes", "clientes"
  add_foreign_key "ordenes", "productos"
  add_foreign_key "ordenes", "tipo_pagos"
end
