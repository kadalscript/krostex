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

ActiveRecord::Schema.define(:version => 20130213170437) do

  create_table "a_area_a_negaras", :force => true do |t|
    t.string   "kode",       :limit => 5
    t.string   "nama",       :limit => 30
    t.string   "simbol",     :limit => 5
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "a_area_b_provinsis", :force => true do |t|
    t.string   "kode",       :limit => 10
    t.string   "nama",       :limit => 30
    t.string   "simbol",     :limit => 5
    t.string   "id_negara",  :limit => 5
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "a_area_c_cities", :force => true do |t|
    t.string   "kode",        :limit => 10
    t.string   "nama",        :limit => 30
    t.string   "simbol",      :limit => 5
    t.string   "id_negara",   :limit => 5
    t.string   "id_provinsi", :limit => 10
    t.string   "updated_by",  :limit => 30
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

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
    t.integer  "status1",     :limit => 2,  :default => 0
    t.string   "st_progress", :limit => 20
    t.string   "updated_by",  :limit => 30
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "a_brg_a_departments", :force => true do |t|
    t.string   "kode",       :limit => 5
    t.string   "nama",       :limit => 30
    t.string   "simbol",     :limit => 5
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "a_brg_b_golongans", :force => true do |t|
    t.string   "kode",          :limit => 5
    t.string   "nama",          :limit => 30
    t.string   "simbol",        :limit => 5
    t.string   "id_department", :limit => 5
    t.string   "updated_by",    :limit => 30
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "a_brg_c_types", :force => true do |t|
    t.string   "kode",          :limit => 5
    t.string   "nama",          :limit => 30
    t.string   "simbol",        :limit => 5
    t.string   "id_department", :limit => 5
    t.string   "id_golongan",   :limit => 5
    t.string   "updated_by",    :limit => 30
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "a_brg_d_level_fours", :force => true do |t|
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

  create_table "a_brg_e_level_fives", :force => true do |t|
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

  create_table "a_company_profiles", :force => true do |t|
    t.string   "kode",           :limit => 5
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
    t.string   "simbol",       :limit => 5
    t.string   "nama",         :limit => 30
    t.integer  "status1",      :limit => 2,  :default => 0
    t.string   "st_progress",  :limit => 20
    t.string   "update_by",    :limit => 30
    t.string   "alamat_title", :limit => 99
    t.string   "alamat_01",    :limit => 99
    t.string   "alamat_02",    :limit => 99
    t.string   "alamat_03",    :limit => 99
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "a_kemasans", :force => true do |t|
    t.string   "kode",       :limit => 10
    t.string   "nama",       :limit => 15
    t.decimal  "isi_volume"
    t.string   "id_satuan",  :limit => 5
    t.string   "updated_by", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "a_mata_uangs", :force => true do |t|
    t.string   "kode",       :limit => 5
    t.string   "simbol",     :limit => 5
    t.string   "nama",       :limit => 15
    t.integer  "no_urut"
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
    t.string   "id_company",              :limit => 10
    t.string   "id_gudang",               :limit => 10
    t.integer  "is_trigger",              :limit => 2
    t.string   "id_gudang_reject",        :limit => 10
    t.string   "kat_alamat_ktr_supplier", :limit => 20
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
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

  create_table "admin_ms_groups", :force => true do |t|
    t.string   "id_group",        :limit => 5
    t.string   "namagroup",       :limit => 20
    t.integer  "statusgroup",                   :default => 0
    t.string   "id_group_parent", :limit => 5
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "admin_ms_menu_generates", :force => true do |t|
    t.string   "ip_address", :limit => 15
    t.string   "no_urut",    :limit => 4
    t.string   "id_menu",    :limit => 5
    t.string   "simbol",     :limit => 5
    t.string   "keterangan", :limit => 50
    t.string   "nm_url",     :limit => 100
    t.integer  "status",     :limit => 2,   :default => 0
    t.string   "id_menuref", :limit => 15
    t.integer  "tipemenu",   :limit => 2,   :default => 0
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "admin_ms_menu_group_navs", :force => true do |t|
    t.string   "id_menu",     :limit => 5
    t.string   "id_group",    :limit => 5
    t.integer  "id_navigasi", :limit => 2, :default => 0
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
  end

  create_table "admin_ms_menu_groups", :force => true do |t|
    t.string   "id_menu",    :limit => 5
    t.string   "id_group",   :limit => 5
    t.integer  "statusmenu", :limit => 2, :default => 0
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
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
    t.integer  "id_navigasi", :default => 0
    t.integer  "id_modul",    :default => 0
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "admin_ms_moduls", :force => true do |t|
    t.integer  "id_modul",   :limit => 8
    t.string   "keterangan", :limit => 50
    t.integer  "status1",    :limit => 2,  :default => 0
    t.string   "nm_url",     :limit => 99
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
  end

  create_table "admin_ms_navigasis", :force => true do |t|
    t.integer  "id_navigasi",                 :default => 0
    t.string   "nama_navigasi", :limit => 30
    t.string   "nama_button",   :limit => 30
    t.integer  "status1",       :limit => 2,  :default => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "admin_ms_url_backs", :force => true do |t|
    t.string   "kode",       :limit => 20
    t.string   "url_back",   :limit => 3000
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "admin_ms_users", :force => true do |t|
    t.string   "login_name",                       :default => "", :null => false
    t.string   "encrypted_password",               :default => "", :null => false
    t.string   "id_group",           :limit => 5
    t.string   "user_name",          :limit => 30
    t.integer  "status",                           :default => 0
    t.integer  "limitlogin",                       :default => 0
    t.datetime "tglcreate"
    t.datetime "tglpasswordexpired"
    t.datetime "tgllastlogin"
    t.string   "pin",                :limit => 10
    t.integer  "is_level1",                        :default => 0
    t.integer  "is_level2",                        :default => 0
    t.integer  "is_level3",                        :default => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "b_barang_as", :force => true do |t|
    t.string   "kode",          :limit => 20
    t.string   "nama",          :limit => 50
    t.string   "id_department", :limit => 5
    t.string   "id_golongan",   :limit => 5
    t.string   "id_type",       :limit => 5
    t.string   "id_level_four", :limit => 5
    t.string   "id_level_five", :limit => 5
    t.string   "id_satuan",     :limit => 5
    t.decimal  "min_stok",                    :default => 0.0
    t.decimal  "max_stok",                    :default => 0.0
    t.decimal  "reorder_stok",                :default => 0.0
    t.string   "updated_by",    :limit => 30
    t.string   "count_id",      :limit => 5
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
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

  create_table "b_supplier_as", :force => true do |t|
    t.string   "kode",           :limit => 10
    t.string   "nama",           :limit => 50
    t.string   "id_badan_usaha", :limit => 2
    t.string   "email",          :limit => 50
    t.string   "homepage",       :limit => 90
    t.integer  "status1",        :limit => 2,  :default => 0
    t.string   "st_progress",    :limit => 20
    t.string   "updated_by",     :limit => 30
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "b_supplier_b_alamats", :force => true do |t|
    t.string   "kode_alamat",   :limit => 15
    t.string   "kode",          :limit => 10
    t.string   "kode_kategori", :limit => 15
    t.string   "alamat_title",  :limit => 90
    t.string   "alamat_01",     :limit => 90
    t.string   "alamat_02",     :limit => 90
    t.string   "id_negara",     :limit => 5
    t.string   "id_provinsi",   :limit => 10
    t.string   "id_kota",       :limit => 10
    t.string   "telepon",       :limit => 30
    t.string   "fax",           :limit => 30
    t.string   "kode_pos",      :limit => 5
    t.integer  "status1",       :limit => 2
    t.string   "st_progress",   :limit => 20
    t.string   "updated_by",    :limit => 30
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "b_supplier_c_contacts", :force => true do |t|
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

  create_table "b_supplier_d_accounts", :force => true do |t|
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

  create_table "b_supplier_e_history_quotations", :force => true do |t|
    t.string   "kode",                      :limit => 10
    t.string   "kode_brg",                  :limit => 10
    t.string   "kode_brg_ext",              :limit => 20
    t.string   "id_satuan_kemasan",         :limit => 10
    t.integer  "status1",                   :limit => 2
    t.string   "st_progress",               :limit => 20
    t.string   "updated_by",                :limit => 30
    t.integer  "pos_penawaran_x",           :limit => 2
    t.string   "penawaran_kode_cur",        :limit => 20
    t.datetime "penawaran_tgl_cur"
    t.string   "penawaran_kode_valuta_cur", :limit => 5
    t.decimal  "penawaran_harga_cur"
    t.decimal  "penawaran_min_order_cur"
    t.string   "penawaran_kode_satuan_cur", :limit => 5
    t.integer  "penawaran_waktu_kirim_cur"
    t.string   "penawaran_kode_1",          :limit => 20
    t.datetime "penawaran_tgl_1"
    t.string   "penawaran_kode_valuta_1",   :limit => 5
    t.decimal  "penawaran_harga_1"
    t.decimal  "penawaran_min_order_1"
    t.string   "penawaran_kode_satuan_1",   :limit => 5
    t.integer  "penawaran_waktu_kirim_1"
    t.string   "penawaran_kode_2",          :limit => 20
    t.datetime "penawaran_tgl_2"
    t.string   "penawaran_kode_valuta_2",   :limit => 5
    t.decimal  "penawaran_harga_2"
    t.decimal  "penawaran_min_order_2"
    t.string   "penawaran_kode_satuan_2",   :limit => 5
    t.integer  "penawaran_waktu_kirim_2"
    t.string   "penawaran_kode_3",          :limit => 20
    t.datetime "penawaran_tgl_3"
    t.string   "penawaran_kode_valuta_3",   :limit => 5
    t.decimal  "penawaran_harga_3"
    t.decimal  "penawaran_min_order_3"
    t.string   "penawaran_kode_satuan_3",   :limit => 5
    t.integer  "penawaran_waktu_kirim_3"
    t.string   "penawaran_kode_4",          :limit => 20
    t.datetime "penawaran_tgl_4"
    t.string   "penawaran_kode_valuta_4",   :limit => 5
    t.decimal  "penawaran_harga_4"
    t.decimal  "penawaran_min_order_4"
    t.string   "penawaran_kode_satuan_4",   :limit => 5
    t.integer  "penawaran_waktu_kirim_4"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
  end

  create_table "m_beli_nota_a_hs", :force => true do |t|
    t.string   "kode_tmp",                    :limit => 20
    t.string   "kode_disp",                   :limit => 20
    t.string   "id_cabang",                   :limit => 2
    t.string   "simbol",                      :limit => 5
    t.string   "no_revisi",                   :limit => 2
    t.datetime "tanggal"
    t.string   "no_po_disp",                  :limit => 20
    t.string   "id_supplier",                 :limit => 10
    t.string   "id_valuta",                   :limit => 2
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
    t.string   "keterangan",                  :limit => 200
    t.string   "updated_by",                  :limit => 30
    t.integer  "status1",                                    :default => 0
    t.string   "no_btb_list_disp",            :limit => 20
    t.string   "st_progress",                 :limit => 20
    t.decimal  "qty_all_nota",                               :default => 0.0
    t.integer  "is_ap",                                      :default => 0
    t.string   "id_ap_disp",                  :limit => 20
    t.boolean  "is_drafted"
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
  end

  create_table "m_beli_nota_b_ds", :force => true do |t|
    t.string   "kode_tmp",                         :limit => 20
    t.string   "kode_brg",                         :limit => 20
    t.string   "kode_brg_ext",                     :limit => 30
    t.decimal  "qty_kemasan_unit",                               :default => 0.0
    t.decimal  "qty_kemasan",                                    :default => 0.0
    t.decimal  "qty",                                            :default => 0.0
    t.string   "id_valuta",                        :limit => 2
    t.decimal  "harga",                                          :default => 0.0
    t.decimal  "diskon",                                         :default => 0.0
    t.decimal  "total_qty_kali_harga",                           :default => 0.0
    t.decimal  "total_qty_kali_harga_kali_diskon",               :default => 0.0
    t.decimal  "total_kurang_diskon",                            :default => 0.0
    t.datetime "created_at",                                                      :null => false
    t.datetime "updated_at",                                                      :null => false
  end

  create_table "m_beli_po_a_hs", :force => true do |t|
    t.string   "kode_tmp",                    :limit => 20
    t.string   "kode_disp",                   :limit => 20
    t.string   "no_revisi",                   :limit => 2
    t.string   "id_cabang",                   :limit => 5
    t.string   "simbol",                      :limit => 5
    t.datetime "tanggal"
    t.string   "no_penawaran",                :limit => 20
    t.string   "id_supplier",                 :limit => 10
    t.string   "id_alamat_supplier",          :limit => 15
    t.string   "id_valuta",                   :limit => 5
    t.decimal  "nilai_rate_kurs",                            :default => 0.0
    t.decimal  "total_sub_total",                            :default => 0.0
    t.decimal  "total_disc_persen",                          :default => 0.0
    t.decimal  "total_disc_nominal",                         :default => 0.0
    t.decimal  "total_sub_total_kurang_disc",                :default => 0.0
    t.decimal  "total_ppn_disc",                             :default => 0.0
    t.decimal  "total_ppn_nominal",                          :default => 0.0
    t.decimal  "total_grand_total",                          :default => 0.0
    t.datetime "tgl_kirim"
    t.datetime "tgl_jth_tempo"
    t.string   "keterangan",                  :limit => 100
    t.string   "keterangan_syarat_bayar",     :limit => 100
    t.string   "updated_by",                  :limit => 30
    t.integer  "status1",                                    :default => 0
    t.string   "st_progress",                 :limit => 20
    t.decimal  "qty_all_po",                                 :default => 0.0
    t.decimal  "qty_all_btb",                                :default => 0.0
    t.decimal  "qty_all_close",                              :default => 0.0
    t.decimal  "total_nota",                                 :default => 0.0
    t.decimal  "total_retur",                                :default => 0.0
    t.integer  "is_close_btb",                               :default => 0
    t.integer  "is_close_po",                                :default => 0
    t.boolean  "is_drafted"
    t.string   "id_gudang_kirim",             :limit => 10
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
  end

  create_table "m_beli_po_b_ds", :force => true do |t|
    t.string   "kode_tmp",                         :limit => 20
    t.string   "kode_brg",                         :limit => 20
    t.string   "kode_brg_ext",                     :limit => 30
    t.decimal  "qty_kemasan_unit",                               :default => 0.0
    t.decimal  "qty_kemasan",                                    :default => 0.0
    t.decimal  "qty",                                            :default => 0.0
    t.decimal  "qty_btb",                                        :default => 0.0
    t.string   "id_valuta",                        :limit => 10
    t.decimal  "harga",                                          :default => 0.0
    t.decimal  "diskon",                                         :default => 0.0
    t.decimal  "total_qty_kali_harga",                           :default => 0.0
    t.decimal  "total_qty_kali_harga_kali_diskon",               :default => 0.0
    t.decimal  "total_kurang_diskon",                            :default => 0.0
    t.datetime "created_at",                                                      :null => false
    t.datetime "updated_at",                                                      :null => false
  end

  create_table "m_beli_retur_a_hs", :force => true do |t|
    t.string   "kode_tmp",                    :limit => 20
    t.string   "kode_disp",                   :limit => 20
    t.string   "id_cabang",                   :limit => 2
    t.string   "simbol",                      :limit => 5
    t.datetime "tanggal"
    t.string   "no_po_disp",                  :limit => 20
    t.string   "id_supplier",                 :limit => 10
    t.string   "id_valuta",                   :limit => 2
    t.decimal  "nilai_rate_kurs",                            :default => 0.0
    t.decimal  "total_sub_total",                            :default => 0.0
    t.decimal  "total_disc_persen",                          :default => 0.0
    t.decimal  "total_disc_nominal",                         :default => 0.0
    t.decimal  "total_sub_total_kurang_disc",                :default => 0.0
    t.decimal  "total_ppn_disc",                             :default => 0.0
    t.decimal  "total_ppn_nominal",                          :default => 0.0
    t.decimal  "total_grand_total",                          :default => 0.0
    t.decimal  "total_grand_total_po",                       :default => 0.0
    t.decimal  "total_dp",                                   :default => 0.0
    t.datetime "tgl_kirim"
    t.string   "keterangan",                  :limit => 200
    t.string   "updated_by",                  :limit => 30
    t.integer  "status1",                                    :default => 0
    t.string   "st_progress",                 :limit => 20
    t.decimal  "qty_all_retur",                              :default => 0.0
    t.decimal  "qty_sj",                                     :default => 0.0
    t.integer  "is_ar",                                      :default => 0
    t.string   "id_ar_disp",                  :limit => 20
    t.boolean  "is_drafted"
    t.string   "no_revisi",                   :limit => 2
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
  end

  create_table "m_beli_retur_b_ds", :force => true do |t|
    t.string   "kode_tmp",                         :limit => 20
    t.string   "kode_brg",                         :limit => 20
    t.string   "kode_brg_ext",                     :limit => 30
    t.decimal  "qty_kemasan_unit",                               :default => 0.0
    t.decimal  "qty_kemasan",                                    :default => 0.0
    t.decimal  "qty",                                            :default => 0.0
    t.string   "id_valuta",                        :limit => 2
    t.decimal  "harga",                                          :default => 0.0
    t.decimal  "diskon",                                         :default => 0.0
    t.decimal  "total_qty_kali_harga",                           :default => 0.0
    t.decimal  "total_qty_kali_harga_kali_diskon",               :default => 0.0
    t.decimal  "total_kurang_diskon",                            :default => 0.0
    t.datetime "created_at",                                                      :null => false
    t.datetime "updated_at",                                                      :null => false
  end

  create_table "m_warehouse_in_first_hs", :force => true do |t|
    t.string   "kode_tmp",          :limit => 20
    t.string   "kode_disp",         :limit => 20
    t.datetime "tanggal"
    t.string   "id_cabang",         :limit => 5
    t.string   "simbol",            :limit => 5
    t.string   "jns_inv",           :limit => 15
    t.string   "id_reff_disp",      :limit => 30
    t.string   "keterangan",        :limit => 99
    t.string   "nama_referensi",    :limit => 50
    t.string   "id_surat_jalan",    :limit => 30
    t.string   "id_po_disp",        :limit => 30
    t.string   "id_supplier",       :limit => 10
    t.string   "id_customer",       :limit => 10
    t.string   "id_gudang_potong",  :limit => 10
    t.integer  "is_nota",           :limit => 2,  :default => 0
    t.string   "id_nota_beli_disp", :limit => 20
    t.decimal  "total_qty_in",                    :default => 0.0
    t.string   "updated_by",        :limit => 30
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.integer  "status1",           :limit => 2,  :default => 0
    t.string   "st_progress",       :limit => 20
    t.boolean  "is_drafted"
  end

  create_table "m_warehouse_in_second_ds", :force => true do |t|
    t.string   "kode_tmp",         :limit => 20
    t.string   "kode_brg",         :limit => 20
    t.string   "kode_brg_ext",     :limit => 30
    t.string   "kode_brg_lot",     :limit => 30
    t.decimal  "qty_kemasan_unit",               :default => 0.0
    t.decimal  "qty_kemasan",                    :default => 0.0
    t.decimal  "qty",                            :default => 0.0
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "m_warehouse_ks_brg_as", :force => true do |t|
    t.string   "id_cabang",  :limit => 2
    t.string   "id_gudang",  :limit => 5
    t.string   "kode_brg",   :limit => 20
    t.decimal  "qty_real",                 :default => 0.0
    t.decimal  "qty_mc",                   :default => 0.0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "m_warehouse_ks_brg_b_ds", :force => true do |t|
    t.string   "id_cabang",    :limit => 5
    t.string   "id_gudang",    :limit => 5
    t.string   "tipe_stok",    :limit => 2
    t.string   "kode_brg",     :limit => 20
    t.string   "kode_brg_lot", :limit => 40
    t.string   "no_reff",      :limit => 30
    t.datetime "tanggal"
    t.string   "simbol",       :limit => 5
    t.string   "keterangan",   :limit => 150
    t.string   "catatan",      :limit => 150
    t.decimal  "qty_awal",                    :default => 0.0
    t.decimal  "qty_masuk",                   :default => 0.0
    t.decimal  "qty_keluar",                  :default => 0.0
    t.decimal  "qty_saldo",                   :default => 0.0
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "m_warehouse_ks_brg_c_exts", :force => true do |t|
    t.string   "id_cabang",    :limit => 5
    t.string   "id_gudang",    :limit => 10
    t.string   "kode_brg",     :limit => 20
    t.string   "kode_brg_ext", :limit => 30
    t.decimal  "qty_real",                   :default => 0.0
    t.decimal  "qty_mc",                     :default => 0.0
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "m_warehouse_ks_brg_d_ext_ds", :force => true do |t|
    t.string   "id_cabang",    :limit => 5
    t.string   "id_gudang",    :limit => 5
    t.string   "tipe_stok",    :limit => 2
    t.string   "kode_brg",     :limit => 20
    t.string   "kode_brg_ext", :limit => 30
    t.string   "kode_brg_lot", :limit => 40
    t.string   "no_reff",      :limit => 40
    t.datetime "tanggal"
    t.string   "simbol",       :limit => 5
    t.string   "keterangan",   :limit => 150
    t.string   "catatan",      :limit => 150
    t.decimal  "qty_awal",                    :default => 0.0
    t.decimal  "qty_masuk",                   :default => 0.0
    t.decimal  "qty_keluar",                  :default => 0.0
    t.decimal  "qty_saldo",                   :default => 0.0
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "m_warehouse_ks_brg_e_ext_lots", :force => true do |t|
    t.string   "id_cabang",       :limit => 5
    t.string   "id_gudang",       :limit => 5
    t.string   "kode_brg",        :limit => 20
    t.string   "kode_brg_ext",    :limit => 30
    t.string   "kode_lot_number", :limit => 40
    t.datetime "tanggal"
    t.string   "simbol",          :limit => 5
    t.decimal  "qty_in",                        :default => 0.0
    t.decimal  "qty_out_mc",                    :default => 0.0
    t.decimal  "qty_out_real",                  :default => 0.0
    t.integer  "is_close_mc",                   :default => 0
    t.integer  "is_close_real",                 :default => 0
    t.integer  "status1",                       :default => 0
    t.string   "updated_by",      :limit => 30
    t.string   "st_progress",     :limit => 20
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "m_warehouse_out_a_hs", :force => true do |t|
    t.string   "kode_tmp",        :limit => 20
    t.string   "kode_disp",       :limit => 20
    t.datetime "tanggal"
    t.string   "id_cabang",       :limit => 2
    t.string   "simbol",          :limit => 5
    t.string   "jns_inv",         :limit => 15
    t.string   "id_reff_disp",    :limit => 30
    t.string   "keterangan",      :limit => 200
    t.string   "id_surat_jalan",  :limit => 30
    t.string   "id_so_disp",      :limit => 20
    t.string   "id_po_disp",      :limit => 20
    t.string   "id_supplier",     :limit => 10
    t.string   "id_customer",     :limit => 10
    t.string   "id_gudang_out",   :limit => 10
    t.integer  "is_invoice",                     :default => 0
    t.string   "id_invoice_disp", :limit => 20
    t.decimal  "total_qty_out",                  :default => 0.0
    t.string   "updated_by",      :limit => 30
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.integer  "status1",                        :default => 0
    t.string   "st_progress",     :limit => 20
    t.boolean  "is_drafted"
    t.string   "nama_referensi",  :limit => 50
    t.string   "no_revisi",       :limit => 2
  end

  create_table "m_warehouse_out_b_ds", :force => true do |t|
    t.string   "kode_tmp",         :limit => 20
    t.string   "kode_brg",         :limit => 20
    t.string   "kode_brg_ext",     :limit => 30
    t.string   "kode_brg_lot",     :limit => 40
    t.decimal  "qty_kemasan_unit",               :default => 0.0
    t.decimal  "qty_kemasan",                    :default => 0.0
    t.decimal  "qty",                            :default => 0.0
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

end
