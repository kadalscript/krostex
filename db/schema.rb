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

ActiveRecord::Schema.define(:version => 20121227112117) do

  create_table "a_badan_usahas", :force => true do |t|
    t.string   "kode",       :limit => 5
    t.string   "nama",       :limit => 15
    t.integer  "no_urut"
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "a_company_profiles", :force => true do |t|
    t.string   "kode",           :limit => 1
    t.string   "nama_company",   :limit => 50
    t.string   "contact_person", :limit => 50
    t.string   "alamat_title",   :limit => 90
    t.string   "alamat_01",      :limit => 90
    t.string   "alamat_02",      :limit => 90
    t.string   "alamat_03",      :limit => 90
    t.string   "telepon",        :limit => 30
    t.string   "fax",            :limit => 30
    t.string   "email",          :limit => 30
    t.string   "homepage",       :limit => 30
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "a_gudangs", :force => true do |t|
    t.string   "simbol"
    t.string   "nama"
    t.integer  "status1"
    t.string   "st_progress"
    t.string   "update_by"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "a_kemasans", :force => true do |t|
    t.string   "kode",       :limit => 5
    t.string   "nama",       :limit => 15
    t.decimal  "isi_volume"
    t.string   "id_satuan"
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "a_kota", :force => true do |t|
    t.string   "kode",        :limit => 5
    t.string   "nama",        :limit => 30
    t.string   "simbol",      :limit => 5
    t.string   "id_negara",   :limit => 5
    t.string   "id_provinsi", :limit => 5
    t.string   "updated_by",  :limit => 30
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "a_negaras", :force => true do |t|
    t.string   "kode",       :limit => 5
    t.string   "nama",       :limit => 30
    t.string   "simbol",     :limit => 5
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "a_provinsis", :force => true do |t|
    t.string   "kode",       :limit => 5
    t.string   "nama",       :limit => 15
    t.string   "simbol"
    t.string   "id_negara"
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "a_satuans", :force => true do |t|
    t.string   "simbol",     :limit => 5
    t.string   "nama",       :limit => 15
    t.integer  "no_urut"
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "admin_ms_groups", :force => true do |t|
    t.string   "id_group",        :limit => 5
    t.string   "namagroup",       :limit => 20
    t.integer  "statusgroup"
    t.string   "id_group_parent", :limit => 5
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "admin_ms_menu_generates", :force => true do |t|
    t.string   "ip_address"
    t.string   "string"
    t.string   "no_urut"
    t.string   "id_menu"
    t.string   "simbol"
    t.string   "keterangan"
    t.string   "nm_url"
    t.string   "status"
    t.string   "integer"
    t.string   "id_menuref"
    t.string   "tipemenu"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admin_ms_menu_group_navs", :force => true do |t|
    t.string   "id_menu"
    t.string   "id_group"
    t.integer  "id_navigasi"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "admin_ms_menu_groups", :force => true do |t|
    t.string   "id_menu"
    t.string   "id_group"
    t.string   "id_product"
    t.integer  "statusmenu"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admin_ms_menus", :force => true do |t|
    t.string   "id_menu",        :limit => 4
    t.string   "id_menu_parent", :limit => 4
    t.integer  "status1"
    t.integer  "levelmenu"
    t.integer  "id_modul",       :limit => 2
    t.string   "addparam",       :limit => 99
    t.string   "namamenu",       :limit => 99
    t.integer  "nourut"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "admin_ms_modul_navigasis", :force => true do |t|
    t.integer  "id_navigasi"
    t.integer  "id_modul"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "admin_ms_moduls", :force => true do |t|
    t.integer  "id_modul"
    t.string   "keterangan", :limit => 50
    t.integer  "status1",    :limit => 2
    t.string   "nm_url",     :limit => 99
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "admin_ms_navigasis", :force => true do |t|
    t.integer  "id_navigasi"
    t.string   "nama_navigasi"
    t.string   "nama_button"
    t.integer  "status1"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "admin_ms_url_backs", :force => true do |t|
    t.string   "kode"
    t.string   "url_back"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admin_ms_users", :force => true do |t|
    t.string   "login_name",         :default => "", :null => false
    t.string   "encrypted_password", :default => "", :null => false
    t.string   "id_group"
    t.string   "user_name"
    t.integer  "status"
    t.integer  "limitlogin"
    t.datetime "tglcreate"
    t.datetime "tglpasswordexpired"
    t.datetime "tgllastlogin"
    t.string   "pin"
    t.integer  "is_level1"
    t.integer  "is_level2"
    t.integer  "is_level3"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

end
