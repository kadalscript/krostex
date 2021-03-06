ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}") if !["schema_migrations"].include?(table)
end

AdminMsGroup.delete_all
AdminMsGroup.create(:id_group =>'00', :namagroup =>'MASTER ROOT', :statusgroup =>0, :id_group_parent =>'ROOT', :created_at =>'1900-01-01', :updated_at =>'1900-01-01')
AdminMsGroup.create(:id_group =>'01', :namagroup =>'SUPER ADMINISTRATOR', :statusgroup =>0, :id_group_parent =>'00', :created_at =>'1900-01-01', :updated_at =>'1900-01-01')
AdminMsGroup.create(:id_group =>'02', :namagroup =>'ADMIN', :statusgroup =>0, :id_group_parent =>'01', :created_at =>'1900-01-01', :updated_at =>'1900-01-01')
AdminMsGroup.create(:id_group =>'03', :namagroup =>'SHARE HOLDER', :statusgroup =>0, :id_group_parent =>'02', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsGroup.create(:id_group =>'04', :namagroup =>'PRESIDEN DIREKTUR', :statusgroup =>0, :id_group_parent =>'03', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsGroup.create(:id_group =>'05', :namagroup =>'DIREKSI', :statusgroup =>0, :id_group_parent =>'04', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsGroup.create(:id_group =>'06', :namagroup =>'MANAGER', :statusgroup =>0, :id_group_parent =>'05', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsGroup.create(:id_group =>'07', :namagroup =>'STAFF', :statusgroup =>0, :id_group_parent =>'06', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsUser.delete_all
AdminMsUser.create(:login_name =>'0331960121', :id_group =>'00', :user_name =>'AIRMANSENA', :encrypted_password =>'$2a$10$S3NbEFor5cSOF2eK.eJr0e01pKzKtz493zPbMgTarr6OH5a9oEK2C', :limitlogin =>99, :tglcreate =>'2008-01-01', :tglpasswordexpired =>'2900-01-01', :tgllastlogin =>'2008-01-04', :pin =>'111111', :created_at =>'1899-12-30', :updated_at =>'1899-12-30', :status =>0)
AdminMsUser.create(:login_name =>'herman', :id_group =>'00', :user_name =>'herman', :encrypted_password =>'$2a$10$101C7OKSpmvnlssgHvhTeOVCOO5miyR9k7sM2Y5l2/rRbJWHMo55i', :limitlogin =>1, :tglcreate =>'2012-09-24', :tglpasswordexpired =>'2012-09-24', :tgllastlogin =>'2012-09-24', :pin =>'1', :created_at =>'2012-09-24', :updated_at =>'2012-09-24', :status =>1)
AdminMsUser.create(:login_name =>'masterroot', :id_group =>'00', :user_name =>'MASTER ROOT', :encrypted_password =>'$2a$10$cjblxMAc0LPunbRMUU1see/bbVFZ3f3mJ72IZtkX721mE5JzTvdqO', :limitlogin =>99, :tglcreate =>'2007-06-04', :tglpasswordexpired =>'2900-06-04', :tgllastlogin =>'2008-01-30', :pin =>'333333', :created_at =>'1899-12-30', :updated_at =>'1899-12-30', :status =>0)
AdminMsModul.delete_all
AdminMsModul.create(:id_modul =>0, :keterangan =>'-', :status1 =>0, :nm_url =>'', :created_at =>'1900-01-01', :updated_at =>'1900-01-01')
AdminMsModul.create(:id_modul =>1, :keterangan =>'under construction', :status1 =>0, :nm_url =>'under_construction', :created_at =>'1899-12-30', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>2, :keterangan =>'Company Profile', :status1 =>0, :nm_url =>'a_company_profiles', :created_at =>'1899-12-30', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>3, :keterangan =>'Template System', :status1 =>0, :nm_url =>'a_template_cats', :created_at =>'1899-12-30', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>4, :keterangan =>'Gudang', :status1 =>0, :nm_url =>'a_gudangs', :created_at =>'1899-12-30', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>5, :keterangan =>'Satuan', :status1 =>0, :nm_url =>'a_satuans', :created_at =>'1899-12-30', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>7, :keterangan =>'Kemasan', :status1 =>0, :nm_url =>'a_kemasans', :created_at =>'2012-11-10', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>8, :keterangan =>'Badan Usaha', :status1 =>0, :nm_url =>'a_badan_usahas', :created_at =>'2012-11-10', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>9, :keterangan =>'Negara', :status1 =>0, :nm_url =>'a_negaras', :created_at =>'2012-11-10', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>10, :keterangan =>'Provinsi', :status1 =>0, :nm_url =>'a_provinsis', :created_at =>'2012-11-10', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>6, :keterangan =>'Kota', :status1 =>0, :nm_url =>'a_cities', :created_at =>'1899-12-30', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>11, :keterangan =>'Valuta', :status1 =>0, :nm_url =>'a_mata_uangs', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>12, :keterangan =>'Menu System', :status1 =>0, :nm_url =>'admin_ms_menus', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>13, :keterangan =>'Jabatan', :status1 =>0, :nm_url =>'admin_ms_groups', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>14, :keterangan =>'Navigasi Button', :status1 =>0, :nm_url =>'admin_ms_navigasis', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>15, :keterangan =>'Modul Aplikasi', :status1 =>0, :nm_url =>'admin_ms_moduls', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>16, :keterangan =>'Jabatan Master', :status1 =>0, :nm_url =>'admin_ms_groups', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>17, :keterangan =>'Department', :status1 =>0, :nm_url =>'a_departments', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>18, :keterangan =>'Jenis', :status1 =>0, :nm_url =>'a_types', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>19, :keterangan =>'Golongan', :status1 =>0, :nm_url =>'a_golongans', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>20, :keterangan =>'Level 4', :status1 =>0, :nm_url =>'a_level_fours', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>21, :keterangan =>'Level 5', :status1 =>0, :nm_url =>'a_level_fives', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>22, :keterangan =>'Supplier Registrasi', :status1 =>0, :nm_url =>'b_suppliers/new', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>23, :keterangan =>'Supplier Buku', :status1 =>0, :nm_url =>'b_suppliers', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>24, :keterangan =>'barang book', :status1 =>0, :nm_url =>'b_barangs', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModul.create(:id_modul =>25, :keterangan =>'Barang Registrasi', :status1 =>0, :nm_url =>'b_barangs/new', :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsModulNavigasi.delete_all
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>2, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>3, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>4, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>5, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>6, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>7, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>8, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>9, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>10, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>11, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>12, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>13, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>14, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>15, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>16, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>17, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>18, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>19, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>20, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>21, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>22, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>23, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>24, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>25, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>26, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>27, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>28, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>29, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>30, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>31, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModulNavigasi.create(:id_navigasi =>0, :id_modul =>32, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenu.delete_all
AdminMsMenu.create(:id_menu =>'0000', :id_menu_parent =>'ROOT', :status1 =>0, :levelmenu =>0, :id_modul =>0, :addparam =>'', :namamenu =>'NIAGA SARANA TEKNOLOGI', :nourut =>0, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0002', :id_menu_parent =>'0001', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'REGISTRASI', :nourut =>10, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0005', :id_menu_parent =>'0001', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'APLIKASI', :nourut =>40, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0006', :id_menu_parent =>'0001', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'LAPORAN', :nourut =>70, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0007', :id_menu_parent =>'0001', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'BUKU', :nourut =>50, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0010', :id_menu_parent =>'0005', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'Purchase Order', :nourut =>10, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0011', :id_menu_parent =>'0005', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'Nota Pembelian', :nourut =>20, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0012', :id_menu_parent =>'0005', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'Nota Retur Pembelian', :nourut =>30, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0013', :id_menu_parent =>'0005', :status1 =>99, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'Bukti Terima Barang', :nourut =>40, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0014', :id_menu_parent =>'0005', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'Bukti Keluar Barang', :nourut =>60, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0015', :id_menu_parent =>'0007', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'Buku Purchase Order', :nourut =>10, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0016', :id_menu_parent =>'0007', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'Buku Nota Pembelian', :nourut =>20, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0017', :id_menu_parent =>'0007', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'Buku Nota Retur Pembelian', :nourut =>30, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0018', :id_menu_parent =>'0007', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'Buku Bukti Terima Barang', :nourut =>40, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0019', :id_menu_parent =>'0007', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'Buku Bukti Keluar Barang', :nourut =>50, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0020', :id_menu_parent =>'0000', :status1 =>0, :levelmenu =>1, :id_modul =>0, :addparam =>'', :namamenu =>'PRODUKSI', :nourut =>20, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0021', :id_menu_parent =>'0000', :status1 =>0, :levelmenu =>1, :id_modul =>0, :addparam =>'', :namamenu =>'PEMASARAN', :nourut =>30, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0022', :id_menu_parent =>'0000', :status1 =>0, :levelmenu =>1, :id_modul =>0, :addparam =>'', :namamenu =>'KEUANGAN', :nourut =>40, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0023', :id_menu_parent =>'0000', :status1 =>0, :levelmenu =>1, :id_modul =>0, :addparam =>'', :namamenu =>'PERSONALIA', :nourut =>60, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0024', :id_menu_parent =>'0000', :status1 =>0, :levelmenu =>1, :id_modul =>0, :addparam =>'', :namamenu =>'KONFIGURASI', :nourut =>70, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0025', :id_menu_parent =>'0024', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'KONFIGURASI', :nourut =>10, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0027', :id_menu_parent =>'0024', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'PRODUKSI', :nourut =>30, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0028', :id_menu_parent =>'0024', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'PEMASARAN', :nourut =>40, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0029', :id_menu_parent =>'0024', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'PERSONALIA', :nourut =>60, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0030', :id_menu_parent =>'0024', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'KEUANGAN', :nourut =>70, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0026', :id_menu_parent =>'0024', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'PEMBELIAN DAN WAREHOUSE', :nourut =>20, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0031', :id_menu_parent =>'0025', :status1 =>0, :levelmenu =>3, :id_modul =>2, :addparam =>'', :namamenu =>'Profile Perusahaan', :nourut =>10, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0033', :id_menu_parent =>'0025', :status1 =>0, :levelmenu =>3, :id_modul =>3, :addparam =>'', :namamenu =>'Template System', :nourut =>50, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0032', :id_menu_parent =>'0025', :status1 =>0, :levelmenu =>3, :id_modul =>6, :addparam =>'', :namamenu =>'Parameter', :nourut =>30, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0034', :id_menu_parent =>'0025', :status1 =>0, :levelmenu =>3, :id_modul =>4, :addparam =>'', :namamenu =>'Gudang', :nourut =>70, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0035', :id_menu_parent =>'0025', :status1 =>0, :levelmenu =>3, :id_modul =>5, :addparam =>'', :namamenu =>'Satuan', :nourut =>90, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0036', :id_menu_parent =>'0025', :status1 =>0, :levelmenu =>3, :id_modul =>7, :addparam =>'', :namamenu =>'Kemasan', :nourut =>110, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0038', :id_menu_parent =>'0025', :status1 =>0, :levelmenu =>3, :id_modul =>9, :addparam =>'', :namamenu =>'Negara', :nourut =>140, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0037', :id_menu_parent =>'0025', :status1 =>0, :levelmenu =>3, :id_modul =>8, :addparam =>'', :namamenu =>'Badan Usaha', :nourut =>130, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0008', :id_menu_parent =>'0002', :status1 =>0, :levelmenu =>3, :id_modul =>22, :addparam =>'', :namamenu =>'Supplier', :nourut =>10, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0003', :id_menu_parent =>'0001', :status1 =>0, :levelmenu =>2, :id_modul =>23, :addparam =>'', :namamenu =>'SUPPLIER', :nourut =>20, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0004', :id_menu_parent =>'0001', :status1 =>0, :levelmenu =>2, :id_modul =>24, :addparam =>'', :namamenu =>'BARANG', :nourut =>30, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0009', :id_menu_parent =>'0002', :status1 =>0, :levelmenu =>3, :id_modul =>25, :addparam =>'', :namamenu =>'Bahan Baku', :nourut =>20, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0001', :id_menu_parent =>'0000', :status1 =>0, :levelmenu =>1, :id_modul =>0, :addparam =>'', :namamenu =>'PEMBELIAN DAN WAREHOUSE', :nourut =>10, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0039', :id_menu_parent =>'0025', :status1 =>0, :levelmenu =>3, :id_modul =>10, :addparam =>'', :namamenu =>'Provinsi', :nourut =>150, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0040', :id_menu_parent =>'0025', :status1 =>0, :levelmenu =>3, :id_modul =>6, :addparam =>'', :namamenu =>'Kota', :nourut =>170, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0041', :id_menu_parent =>'0025', :status1 =>0, :levelmenu =>3, :id_modul =>11, :addparam =>'', :namamenu =>'Valuta', :nourut =>210, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0042', :id_menu_parent =>'0024', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'PROFILE PEMAKAI', :nourut =>5, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0043', :id_menu_parent =>'0042', :status1 =>0, :levelmenu =>3, :id_modul =>12, :addparam =>'', :namamenu =>'Menu System', :nourut =>10, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0045', :id_menu_parent =>'0042', :status1 =>0, :levelmenu =>3, :id_modul =>14, :addparam =>'', :namamenu =>'Navigasi Button', :nourut =>30, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0046', :id_menu_parent =>'0042', :status1 =>0, :levelmenu =>3, :id_modul =>15, :addparam =>'', :namamenu =>'Modul Aplikasi', :nourut =>40, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0047', :id_menu_parent =>'0042', :status1 =>0, :levelmenu =>3, :id_modul =>13, :addparam =>'', :namamenu =>'Jabatan', :nourut =>60, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0044', :id_menu_parent =>'0042', :status1 =>0, :levelmenu =>3, :id_modul =>16, :addparam =>'', :namamenu =>'Group Jabatan', :nourut =>20, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0048', :id_menu_parent =>'0026', :status1 =>0, :levelmenu =>3, :id_modul =>17, :addparam =>'', :namamenu =>'Department', :nourut =>10, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0049', :id_menu_parent =>'0026', :status1 =>0, :levelmenu =>3, :id_modul =>19, :addparam =>'', :namamenu =>'Golongan', :nourut =>20, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0050', :id_menu_parent =>'0026', :status1 =>0, :levelmenu =>3, :id_modul =>18, :addparam =>'', :namamenu =>'Jenis', :nourut =>30, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0051', :id_menu_parent =>'0026', :status1 =>0, :levelmenu =>3, :id_modul =>20, :addparam =>'', :namamenu =>'Level 4', :nourut =>40, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')
AdminMsMenu.create(:id_menu =>'0052', :id_menu_parent =>'0026', :status1 =>0, :levelmenu =>3, :id_modul =>21, :addparam =>'', :namamenu =>'Level 5', :nourut =>50, :created_at =>'2013-01-04', :updated_at =>'2013-01-04')

ABadanUsaha.create(kode: 'K1', nama: 'Badan Usaha 1', no_urut: '1')

badan_usaha = ABadanUsaha.first

ANegara.create([
  { kode: 'K1', nama: 'Negara 1', simbol: 'S1' },
  { kode: 'K2', nama: 'Negara 2', simbol: 'S2' }
])

country = ANegara.first
second_country = ANegara.find_by_id(country.id + 1)

AProvinsi.create([
  { kode: 'K1', nama: 'Provinsi 1', simbol: 'S1', id_negara: country.id },
  { kode: 'K2', nama: 'Provinsi 2', simbol: 'S2', id_negara: second_country.id }
])

province = AProvinsi.first
second_province = AProvinsi.find_by_id(country.id + 1)

ACity.create([
  { kode: 'K1', nama: 'Provinsi 1', simbol: 'S1', id_negara: country.id, id_provinsi: province.id },
  { kode: 'K2', nama: 'Provinsi 2', simbol: 'S2', id_negara: second_country.id, id_provinsi: second_province.id }
])

city = ACity.first
second_city = ACity.find_by_id(city.id + 1)

BSupplier.create([
  { kode: 'Kode 1', nama: 'Nama Supplier 1', id_badan_usaha: badan_usaha.id, email: 'email@supplier1.com', homepage: 'www.homepage-supplier1.com', status1: 0, st_progress: 'ACTIVE' },
  { kode: 'Kode 2', nama: 'Nama Supplier 2', id_badan_usaha: badan_usaha.id, email: 'email@supplier2.com', homepage: 'www.homepage-supplier2.com', status1: 99, st_progress: 'VOID' }
])

supplier = BSupplier.first
second_supplier = BSupplier.find_by_id(supplier.id + 1)

BSupplierAlamat.create([
  { kode_alamat: 'Kode alamat 1', kode: 'Kode 1', kode_kategori: 'Kode kategori 1', alamat_title: "Alamat #{supplier.nama}", id_negara: country.id, id_provinsi: province.id, id_kota: city.id, telepon: '11111111', fax: '11111112', status1: 0, st_progress: 'ACTIVE', b_supplier_id: supplier.id },
  { kode_alamat: 'Kode alamat 2', kode: 'Kode 2', kode_kategori: 'Kode kategori 2', alamat_title: "Alamat #{second_supplier.nama}", id_negara: second_country.id, id_provinsi: second_province.id, id_kota: second_city.id, telepon: '22222222', fax: '22222223', status1: 99, st_progress: 'VOID', b_supplier_id: second_supplier.id }
])

ACompanyProfile.create([
  { kode: "1", nama_company: "Perusahaan 1", contact_person: "Kontak Perusahaan 1", alamat_title: "Alamat Perusahaan 1", telepon: 11111111, fax: 11111112, email: "email@perusahaan1.com", homepage: "www.perusahaan1.com" },
  { kode: "2", nama_company: "Perusahaan 2", contact_person: "Kontak Perusahaan 2", alamat_title: "Alamat Perusahaan 2", telepon: 22222223, fax: 22222221, email: "email@perusahaan2.com", homepage: "www.perusahaan2.com" }
])

ADepartment.create([
  { kode: 'K1', nama: 'Department 1', simbol: 'S1' },
  { kode: 'K2', nama: 'Department 2', simbol: 'S2' }
])

department = ADepartment.first
second_department = ADepartment.find_by_id(department.id + 1)

AGolongan.create([
  { kode: 'K1', nama: 'Golongan 1', simbol: 'S1', id_department: department.id },
  { kode: 'K2', nama: 'Golongan 2', simbol: 'S2', id_department: second_department.id }
])

golongan = AGolongan.first
second_golongan = AGolongan.find_by_id(golongan.id + 1)

AType.create([
  { kode: 'K1', nama: 'Jenis 1', simbol: 'S1', id_department: department.id, id_golongan: golongan.id },
  { kode: 'K2', nama: 'Jenis 2', simbol: 'S2', id_department: second_department.id, id_golongan: second_golongan.id }
])

type = AType.first
second_type = AType.find_by_id(type.id + 1)

ALevelFour.create([
  { kode: 'K1', nama: 'Level Four 1', simbol: 'S1', id_department: department.id, id_golongan: golongan.id, id_type: type.id },
  { kode: 'K2', nama: 'Level Four 2', simbol: 'S2', id_department: second_department.id, id_golongan: second_golongan.id, id_type: second_type.id }
])

level_four = ALevelFour.first
second_level_four = ALevelFour.find_by_id(level_four.id + 1)

ALevelFive.create([
  { kode: 'K1', nama: 'Level Five 1', simbol: 'S1', id_department: department.id, id_golongan: golongan.id, id_type: type.id, id_level_four: level_four.id },
  { kode: 'K2', nama: 'Level Five 2', simbol: 'S2', id_department: second_department.id, id_golongan: second_golongan.id, id_type: second_type.id, id_level_four: second_level_four.id }
])

level_five = ALevelFive.first
second_level_five = ALevelFive.find_by_id(level_five.id + 1)

AMataUang.create([
  { kode: 'K1', nama: 'Rupiah', simbol: 'Rp', no_urut: 1 },
  { kode: 'K2', nama: 'Dollar', simbol: '$', no_urut: 1 }
])

ASatuan.create([
  { simbol: 'S1', nama: 'Satuan 1', no_urut: 1 },
  { simbol: 'S2', nama: 'Satuan 2', no_urut: 2 }
])

satuan = ASatuan.first
second_satuan = ASatuan.find_by_id(satuan.id + 1)

BBarang.create([
  { kode: 'K1', nama: 'Barang 1', id_department: department.id, id_golongan: golongan.id, id_type: type.id, id_level_four: level_four.id, id_level_five: level_five.id, id_satuan: satuan.id, min_stok: 10, max_stok: 100 },
  { kode: 'K2', nama: 'Barang 2', id_department: second_department.id, id_golongan: second_golongan.id, id_type: second_type.id, id_level_four: second_level_four.id, id_level_five: second_level_five.id, id_satuan: second_satuan.id, min_stok: 20, max_stok: 200 },
  { kode: 'K3', nama: 'Barang 3', id_department: department.id, id_golongan: golongan.id, id_type: type.id, id_level_four: level_four.id, id_level_five: level_five.id, id_satuan: satuan.id, min_stok: 10, max_stok: 100 },
  { kode: 'K4', nama: 'Barang 4', id_department: second_department.id, id_golongan: second_golongan.id, id_type: second_type.id, id_level_four: second_level_four.id, id_level_five: second_level_five.id, id_satuan: second_satuan.id, min_stok: 20, max_stok: 200 }
])

AKemasan.create([
  { kode: 'K1', nama: 'Kemasan 1', isi_volume: 1, id_satuan: satuan.id },
  { kode: 'K2', nama: 'Kemasan 2', isi_volume: 2, id_satuan: satuan.id },
  { kode: 'K3', nama: 'Kemasan 3', isi_volume: 3, id_satuan: satuan.id },
  { kode: 'K4', nama: 'Kemasan 4', isi_volume: 4, id_satuan: satuan.id }
])