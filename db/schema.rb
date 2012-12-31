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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121212221802) do

  create_table "admin_notes", :force => true do |t|
    t.string   "resource_id",     :null => false
    t.string   "resource_type",   :null => false
    t.integer  "admin_user_id"
    t.string   "admin_user_type"
    t.text     "body"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "admin_notes", ["admin_user_type", "admin_user_id"], :name => "index_admin_notes_on_admin_user_type_and_admin_user_id"
  add_index "admin_notes", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "client_equipments", :force => true do |t|
    t.integer  "ce_state"
    t.text     "ce_observation"
    t.integer  "ce_linked"
    t.integer  "cliente_id"
    t.integer  "equipment_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.boolean  "ce_resp_equip"
    t.boolean  "ce_respswitch"
    t.boolean  "ce_resptrafo"
  end

  add_index "client_equipments", ["cliente_id"], :name => "index_client_equipments_on_cliente_id"
  add_index "client_equipments", ["equipment_id"], :name => "index_client_equipments_on_equipment_id"

  create_table "clientes", :force => true do |t|
    t.string   "cl_apellido"
    t.string   "cl_nombre"
    t.string   "cl_barrio"
    t.string   "cl_domicilio"
    t.string   "cl_telefono"
    t.string   "cl_celular"
    t.string   "cl_celular2"
    t.string   "cl_email"
    t.string   "cl_dni"
    t.string   "cl_observaciones"
    t.string   "cl_cuit"
    t.date     "cl_fecnac"
    t.string   "cl_numcliente"
    t.string   "cl_referencia"
    t.integer  "cl_empresa"
    t.integer  "cl_user"
    t.date     "cl_fecha"
    t.time     "cl_time"
    t.boolean  "cl_elim"
    t.string   "cl_domdes"
    t.string   "cl_bardes"
    t.string   "cl_refdes"
    t.integer  "cl_idcat"
    t.string   "cl_cat"
    t.boolean  "cl_precliente"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "cl_ip"
    t.integer  "localidad_id"
  end

  create_table "clientesmkts", :force => true do |t|
    t.string   "cmk_targetaddr"
    t.string   "cmk_interface"
    t.string   "cmk_parent"
    t.string   "cmk_packetmarks"
    t.string   "cmk_direction"
    t.integer  "cmk_priority"
    t.string   "cmk_queue"
    t.string   "cmk_limitat"
    t.string   "cmk_maxlimit"
    t.string   "cmk_burstlimit"
    t.string   "cmk_burstthreshold"
    t.string   "cmk_burttime"
    t.string   "cmk_totalqueue"
    t.integer  "cliente_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "cmk_minlimit"
    t.string   "cmk_minburstlimit"
    t.string   "cmk_minbursttheshold"
  end

  add_index "clientesmkts", ["cliente_id"], :name => "index_clientesmkts_on_cliente_id"

  create_table "equipment", :force => true do |t|
    t.string   "eq_mac"
    t.integer  "eq_state"
    t.text     "eq_observation"
    t.integer  "cat_id"
    t.string   "category"
    t.string   "eq_node"
    t.integer  "model_id",       :null => false
    t.integer  "supplier_id",    :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "equipment", ["model_id"], :name => "index_equipment_on_model_id"
  add_index "equipment", ["supplier_id"], :name => "index_equipment_on_supplier_id"

  create_table "history_equipments", :force => true do |t|
    t.integer  "he_state"
    t.text     "he_observation"
    t.integer  "equipment_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "history_equipments", ["equipment_id"], :name => "index_history_equipments_on_equipment_id"

  create_table "localidades", :force => true do |t|
    t.string   "lc_nombre"
    t.string   "lc_dpto"
    t.string   "lc_cp"
    t.string   "lc_provincia"
    t.string   "lc_pais"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "makes", :force => true do |t|
    t.string   "mc_name"
    t.text     "mc_observation"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "mktcxes", :force => true do |t|
    t.string   "mkcusuario"
    t.string   "mkcpuerto"
    t.string   "mkcip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "password"
  end

  create_table "models", :force => true do |t|
    t.string   "md_name"
    t.integer  "make_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "models", ["make_id"], :name => "index_models_on_make_id"

  create_table "pagos", :force => true do |t|
    t.decimal  "pg_debe"
    t.decimal  "pg_haber"
    t.string   "pg_detalle"
    t.date     "pg_fecha"
    t.integer  "pg_user"
    t.string   "pg_numfact"
    t.string   "pg_numtar"
    t.string   "pg_numcheq"
    t.integer  "pg_idcuota"
    t.integer  "cliente_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "pg_cant"
    t.decimal  "pg_totalpago", :precision => 8, :scale => 2
  end

  add_index "pagos", ["cliente_id"], :name => "index_pagos_on_cliente_id"

  create_table "planes", :force => true do |t|
    t.string   "pl_nombre"
    t.decimal  "pl_importe", :precision => 8, :scale => 2
    t.string   "pl_vel"
    t.boolean  "pl_elim"
    t.integer  "pl_user"
    t.decimal  "pl_recar1",  :precision => 5, :scale => 2
    t.decimal  "pl_recar2",  :precision => 5, :scale => 2
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.string   "pv_name"
    t.string   "pv_address"
    t.string   "pv_locality"
    t.string   "pv_province"
    t.string   "pv_cel"
    t.string   "pv_cel1"
    t.string   "pv_phone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
