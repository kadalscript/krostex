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

ActiveRecord::Schema.define(:version => 20121229072123) do

  create_table "a_badan_usahas", :force => true do |t|
    t.string   "kode",       :limit => 5
    t.string   "nama",       :limit => 15
    t.integer  "no_urut"
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "a_cities", :force => true do |t|
    t.string   "kode",        :limit => 5
    t.string   "nama",        :limit => 30
    t.string   "simbol",      :limit => 5
    t.string   "id_negara",   :limit => 5
    t.string   "id_provinsi", :limit => 5
    t.string   "updated_by",  :limit => 30
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
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

  create_table "a_departments", :force => true do |t|
    t.string   "kode",       :limit => 5
    t.string   "nama",       :limit => 30
    t.string   "simbol",     :limit => 5
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "a_golongans", :force => true do |t|
    t.string   "kode",          :limit => 5
    t.string   "nama",          :limit => 30
    t.string   "simbol",        :limit => 5
    t.string   "id_department", :limit => 5
    t.string   "updated_by",    :limit => 30
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
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

  create_table "a_kotas", :force => true do |t|
    t.string   "kode",        :limit => 5
    t.string   "nama",        :limit => 30
    t.string   "simbol",      :limit => 5
    t.string   "id_negara",   :limit => 5
    t.string   "id_provinsi", :limit => 5
    t.string   "updated_by",  :limit => 30
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "a_level_fives", :force => true do |t|
    t.string   "kode",          :limit => 5
    t.string   "nama",          :limit => 30
    t.string   "simbol",        :limit => 5
    t.string   "id_department", :limit => 5
    t.string   "id_golongan",   :limit => 5
    t.string   "id_type",       :limit => 5
    t.string   "id_level_four", :limit => 5
    t.string   "updated_by",    :limit => 30
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "a_level_fours", :force => true do |t|
    t.string   "kode",          :limit => 5
    t.string   "nama",          :limit => 30
    t.string   "simbol",        :limit => 5
    t.string   "id_department", :limit => 5
    t.string   "id_golongan",   :limit => 5
    t.string   "id_type",       :limit => 5
    t.string   "updated_by",    :limit => 30
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "a_mata_uangs", :force => true do |t|
    t.string   "kode",       :limit => 2
    t.string   "simbol",     :limit => 5
    t.string   "nama",       :limit => 15
    t.integer  "no_urut"
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
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

  create_table "a_template_cats", :force => true do |t|
    t.string   "kategori",    :limit => 20
    t.string   "kode"
    t.string   "nama",        :limit => 30
    t.string   "simbol",      :limit => 20
    t.integer  "status1"
    t.string   "st_progress", :limit => 20
    t.string   "updated_by",  :limit => 30
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "a_types", :force => true do |t|
    t.string   "kode",          :limit => 5
    t.string   "nama",          :limit => 30
    t.string   "simbol",        :limit => 5
    t.string   "id_department", :limit => 5
    t.string   "id_golongan",   :limit => 5
    t.string   "updated_by",    :limit => 30
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
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
    t.string   "no_urut"
    t.string   "id_menu"
    t.string   "simbol"
    t.string   "keterangan"
    t.string   "nm_url"
    t.integer  "status"
    t.string   "id_menuref"
    t.integer  "tipemenu"
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
    t.string   "id_menu",    :limit => 4
    t.string   "id_group",   :limit => 2
    t.integer  "statusmenu", :limit => 2
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
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

  create_table "b_barangs", :force => true do |t|
    t.string   "kode",          :limit => 5
    t.string   "nama",          :limit => 30
    t.string   "id_department", :limit => 5
    t.string   "id_golongan",   :limit => 5
    t.string   "id_type",       :limit => 5
    t.string   "id_level_four", :limit => 5
    t.string   "id_level_five", :limit => 5
    t.string   "id_satuan",     :limit => 5
    t.decimal  "min_stok"
    t.decimal  "max_stok"
    t.decimal  "reorder_stok"
    t.string   "updated_by",    :limit => 30
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "b_supplier_alamats", :force => true do |t|
    t.string   "kode_alamat",   :limit => 15
    t.string   "kode",          :limit => 10
    t.string   "kode_kategori"
    t.string   "alamat_title",  :limit => 90
    t.string   "alamat_01",     :limit => 90
    t.string   "alamat_02",     :limit => 90
    t.string   "id_negara",     :limit => 5
    t.string   "id_provinsi",   :limit => 5
    t.string   "id_kota",       :limit => 5
    t.string   "telepon",       :limit => 30
    t.string   "fax",           :limit => 30
    t.string   "kode_pos",      :limit => 5
    t.integer  "status1"
    t.string   "st_progress",   :limit => 20
    t.integer  "b_supplier_id"
    t.string   "updated_by",    :limit => 30
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "b_suppliers", :force => true do |t|
    t.string   "kode",           :limit => 10
    t.string   "nama",           :limit => 50
    t.string   "id_badan_usaha", :limit => 2
    t.string   "email",          :limit => 50
    t.string   "homepage"
    t.integer  "status1"
    t.string   "st_progress",    :limit => 20
    t.string   "updated_by",     :limit => 30
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

end
