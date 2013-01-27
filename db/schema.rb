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

ActiveRecord::Schema.define(:version => 20130127090553) do

  create_table "a_badan_usahas", :force => true do |t|
    t.string   "kode",       :limit => 5
    t.string   "nama",       :limit => 15
    t.integer  "no_urut"
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "a_banks", :force => true do |t|
    t.string   "kode",        :limit => 10
    t.string   "nama",        :limit => 35
    t.string   "simbol",      :limit => 5
    t.integer  "status1",     :limit => 2
    t.string   "st_progress", :limit => 20
    t.string   "updated_by",  :limit => 30
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "a_cities", :force => true do |t|
    t.string   "kode",        :limit => 5
    t.string   "nama",        :limit => 30
    t.string   "simbol",      :limit => 5
    t.integer  "id_negara",   :limit => 8
    t.integer  "id_provinsi", :limit => 8
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
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "alamat_title", :limit => 99
    t.string   "alamat_01",    :limit => 99
    t.string   "alamat_02",    :limit => 99
    t.string   "alamat_03",    :limit => 99
  end

  create_table "a_kemasans", :force => true do |t|
    t.string   "kode",       :limit => 5
    t.string   "nama",       :limit => 15
    t.decimal  "isi_volume"
    t.integer  "id_satuan"
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
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
    t.string   "nama",       :limit => 30
    t.string   "simbol"
    t.integer  "id_negara"
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

  create_table "a_setting_programs", :force => true do |t|
    t.string   "id_company"
    t.string   "id_gudang"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "id_gudang_reject",        :limit => 10
    t.string   "kat_alamat_ktr_supplier", :limit => 20
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

  create_table "b_barang_exts", :force => true do |t|
    t.string   "kode",              :limit => 20
    t.string   "kode_ext",          :limit => 20
    t.string   "kode_alias",        :limit => 30
    t.string   "nama_ext",          :limit => 90
    t.string   "id_supplier",       :limit => 10
    t.string   "id_size",           :limit => 10
    t.string   "id_warna",          :limit => 10
    t.string   "id_satuan_kemasan", :limit => 5
    t.string   "updated_by",        :limit => 30
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
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

  create_table "b_supplier_accounts", :force => true do |t|
    t.string   "kode_account", :limit => 20
    t.string   "kode",         :limit => 10
    t.string   "kode_bank",    :limit => 5
    t.string   "nama_pemilik", :limit => 50
    t.string   "nama_cabang",  :limit => 35
    t.integer  "status1",      :limit => 2
    t.string   "st_progress",  :limit => 20
    t.string   "updated_by",   :limit => 30
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
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
    t.integer  "id_kota",       :limit => 8
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

  create_table "b_supplier_contacts", :force => true do |t|
    t.string   "kode_contact",  :limit => 15
    t.string   "kode",          :limit => 10
    t.string   "kode_kategori", :limit => 15
    t.string   "nama",          :limit => 50
    t.string   "nama_lengkap",  :limit => 90
    t.string   "telepon",       :limit => 50
    t.string   "handphone",     :limit => 50
    t.string   "email",         :limit => 50
    t.datetime "tgl_lahir"
    t.integer  "status1",       :limit => 2
    t.string   "st_progress",   :limit => 20
    t.string   "updated_by",    :limit => 30
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "b_supplier_history_quotations", :force => true do |t|
    t.string   "kode",                      :limit => 10
    t.string   "kode_brg",                  :limit => 10
    t.string   "kode_brg_ext",              :limit => 20
    t.integer  "status1",                   :limit => 2
    t.string   "st_progress",               :limit => 20
    t.string   "updated_by",                :limit => 30
    t.string   "id_satuan_kemasan",         :limit => 10
    t.integer  "pos_penawaran_x",           :limit => 2
    t.string   "penawaran_kode_cur",        :limit => 20
    t.datetime "penawaran_tgl_cur"
    t.string   "penawaran_kode_valuta_cur", :limit => 2
    t.decimal  "penawaran_harga_cur"
    t.decimal  "penawaran_min_order_cur"
    t.string   "penawaran_kode_satuan_cur", :limit => 5
    t.integer  "penawaran_waktu_kirim_cur"
    t.string   "penawaran_kode_1",          :limit => 20
    t.datetime "penawaran_tgl_1"
    t.string   "penawaran_kode_valuta_1",   :limit => 2
    t.decimal  "penawaran_harga_1"
    t.decimal  "penawaran_min_order_1"
    t.string   "penawaran_kode_satuan_1",   :limit => 5
    t.integer  "penawaran_waktu_kirim_1"
    t.string   "penawaran_kode_2",          :limit => 20
    t.datetime "penawaran_tgl_2"
    t.string   "penawaran_kode_valuta_2",   :limit => 2
    t.decimal  "penawaran_harga_2"
    t.decimal  "penawaran_min_order_2"
    t.string   "penawaran_kode_satuan_2",   :limit => 5
    t.integer  "penawaran_waktu_kirim_2"
    t.string   "penawaran_kode_3",          :limit => 20
    t.datetime "penawaran_tgl_3"
    t.string   "penawaran_kode_valuta_3",   :limit => 2
    t.decimal  "penawaran_harga_3"
    t.decimal  "penawaran_min_order_3"
    t.string   "penawaran_kode_satuan_3",   :limit => 5
    t.integer  "penawaran_waktu_kirim_3"
    t.string   "penawaran_kode_4",          :limit => 20
    t.datetime "penawaran_tgl_4"
    t.string   "penawaran_kode_valuta_4",   :limit => 2
    t.decimal  "penawaran_harga_4"
    t.decimal  "penawaran_min_order_4"
    t.string   "penawaran_kode_satuan_4",   :limit => 5
    t.integer  "penawaran_waktu_kirim_4"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
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

  create_table "m_beli_nota_first_hs", :force => true do |t|
    t.integer  "kode_tmp"
    t.string   "kode_disp"
    t.string   "id_cabang"
    t.string   "simbol"
    t.datetime "tanggal"
    t.string   "no_po_disp"
    t.string   "id_supplier"
    t.string   "id_valuta"
    t.decimal  "nilai_rate_kurs"
    t.decimal  "total_sub_total"
    t.decimal  "total_disc_persen"
    t.decimal  "total_disc_nominal"
    t.decimal  "total_sub_total_kurang_disc"
    t.decimal  "total_ppn_disc"
    t.decimal  "total_ppn_nominal"
    t.decimal  "total_grand_total"
    t.decimal  "total_grand_total_po"
    t.decimal  "total_dp"
    t.decimal  "total_grand_total_retur"
    t.datetime "tgl_jth_tempo"
    t.string   "keterangan"
    t.string   "no_btb_list_disp"
    t.string   "updated_by"
    t.integer  "status1"
    t.string   "st_progress"
    t.decimal  "qty_all_nota"
    t.integer  "is_ap"
    t.string   "id_ap_disp"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.boolean  "is_drafted"
    t.string   "no_revisi",                   :limit => 2
  end

  create_table "m_beli_nota_second_ds", :force => true do |t|
    t.integer  "kode_tmp"
    t.string   "kode_barang"
    t.decimal  "qty"
    t.string   "id_valuta"
    t.decimal  "harga"
    t.decimal  "diskon"
    t.decimal  "total_qty_kali_harga"
    t.decimal  "total_qty_kali_harga_kali_diskon"
    t.decimal  "total_kurang_diskon"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "m_beli_po_first_hs", :force => true do |t|
    t.string   "kode_tmp"
    t.string   "kode_disp"
    t.string   "id_cabang"
    t.string   "simbol"
    t.datetime "tanggal"
    t.string   "no_penawaran"
    t.string   "id_supplier"
    t.string   "id_alamat_supplier"
    t.string   "id_valuta"
    t.decimal  "nilai_rate_kurs"
    t.decimal  "total_sub_total"
    t.decimal  "total_disc_persen"
    t.decimal  "total_disc_nominal"
    t.decimal  "total_sub_total_kurang_disc"
    t.decimal  "total_ppn_disc"
    t.decimal  "total_ppn_nominal"
    t.decimal  "total_grand_total"
    t.datetime "tgl_kirim"
    t.datetime "tgl_jth_tempo"
    t.string   "keterangan"
    t.string   "keterangan_syarat_bayar"
    t.string   "updated_by"
    t.integer  "status1"
    t.string   "st_progress"
    t.decimal  "qty_all_po"
    t.decimal  "qty_all_btb"
    t.decimal  "qty_all_close"
    t.decimal  "total_nota"
    t.decimal  "total_retur"
    t.integer  "is_close_btb"
    t.integer  "is_close_po"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "is_drafted"
    t.string   "id_gudang_kirim",             :limit => 10
  end

  create_table "m_beli_po_second_ds", :force => true do |t|
    t.integer  "kode_tmp"
    t.string   "kode_brg"
    t.decimal  "qty_kemasan"
    t.string   "id_satuan_kemasan"
    t.decimal  "qty"
    t.decimal  "qty_btb"
    t.string   "id_valuta"
    t.decimal  "harga"
    t.decimal  "diskon"
    t.decimal  "total_qty_kali_harga"
    t.decimal  "total_qty_kali_harga_kali_diskon"
    t.decimal  "total_kurang_diskon"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "kode_brg_ext"
  end

  create_table "m_warehouse_in_first_hs", :force => true do |t|
    t.string   "kode_tmp"
    t.string   "kode_disp"
    t.datetime "tanggal"
    t.string   "id_cabang"
    t.string   "simbol"
    t.string   "jns_inv",           :limit => 15
    t.string   "id_reff_disp"
    t.string   "keterangan"
    t.string   "id_surat_jalan"
    t.string   "id_po_disp"
    t.string   "id_supplier"
    t.string   "id_customer"
    t.string   "id_gudang_potong"
    t.integer  "is_nota"
    t.string   "id_nota_beli_disp"
    t.decimal  "total_qty_in"
    t.string   "updated_by"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "status1"
    t.string   "st_progress"
    t.boolean  "is_drafted"
    t.string   "nama_referensi"
  end

  create_table "m_warehouse_in_second_ds", :force => true do |t|
    t.integer  "kode_tmp"
    t.string   "kode_brg"
    t.string   "kode_brg_ext"
    t.string   "kode_brg_lot"
    t.decimal  "qty"
<<<<<<< HEAD
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.decimal  "qty_kemasan"
    t.string   "id_satuan_kemasan", :limit => 5
=======
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "satuan_id"
    t.integer  "harga"
>>>>>>> c2a888a787a0b9014edc2c602b5782fde2ca71e8
  end

end
