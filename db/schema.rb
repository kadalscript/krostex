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

ActiveRecord::Schema.define(:version => 20121214151404) do

  create_table "a_gudangs", :force => true do |t|
    t.string   "simbol"
    t.string   "nama"
    t.integer  "status1"
    t.string   "st_progress"
    t.string   "update_by"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "admin_ms_groups", :force => true do |t|
    t.string   "id_group"
    t.string   "id_product"
    t.string   "namagroup"
    t.integer  "statusgroup"
    t.string   "id_group_parent"
    t.integer  "viewadmin"
    t.string   "kduser"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
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
    t.string   "id_menu"
    t.string   "id_menuref"
    t.integer  "status1"
    t.integer  "nolist"
    t.integer  "levelmenu"
    t.integer  "id_modul"
    t.string   "addparam"
    t.string   "namamenu"
    t.integer  "statusaplikasi"
    t.integer  "nourut"
    t.integer  "is_show_aplikasi"
    t.integer  "is_show_buku"
    t.integer  "is_show_laporan"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "admin_ms_modul_navigasis", :force => true do |t|
    t.integer  "id_navigasi"
    t.integer  "id_modul"
    t.integer  "is_level1"
    t.integer  "is_level2"
    t.integer  "is_level3"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "admin_ms_moduls", :force => true do |t|
    t.integer  "id_modul"
    t.string   "keterangan"
    t.string   "modulname"
    t.string   "appname"
    t.integer  "status1"
    t.string   "buttongroup"
    t.string   "nm_url"
    t.string   "nm_url1"
    t.string   "nm_url2"
    t.string   "kduser"
    t.integer  "tipemodul"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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
