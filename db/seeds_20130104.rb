ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}") if !["schema_migrations"].include?(table)
end

puts "Seeding AdminMsUser..."
AdminMsUser.create(:login_name =>'0331960121', :id_group =>'00', :user_name =>'AIRMANSENA', :password =>'1111', :password_confirmation =>'1111', :limitlogin =>99, :tglcreate =>'2008-01-01', :tglpasswordexpired =>'2900-01-01', :tgllastlogin =>'2008-01-04', :pin =>'111111', :created_at =>'1899-12-30', :updated_at =>'1899-12-30', :status =>0)
AdminMsUser.create(:login_name =>'herman', :id_group =>'00', :user_name =>'herman', :password =>'1111', :password_confirmation =>'1111', :limitlogin =>1, :tglcreate =>'2012-09-24', :tglpasswordexpired =>'2012-09-24', :tgllastlogin =>'2012-09-24', :pin =>'1', :created_at =>'2012-09-24', :updated_at =>'2012-09-24', :status =>1)
AdminMsUser.create(:login_name =>'masterroot', :id_group =>'00', :user_name =>'MASTER ROOT', :password =>'1111', :password_confirmation =>'1111', :limitlogin =>99, :tglcreate =>'2007-06-04', :tglpasswordexpired =>'2900-06-04', :tgllastlogin =>'2008-01-30', :pin =>'333333', :created_at =>'1899-12-30', :updated_at =>'1899-12-30', :status =>0)
admin = AdminMsUser.first

puts "Seeding ACompanyProfile..."
ACompanyProfile.create(kode: "1", nama_company: "Perusahaan", contact_person: "Kontak", alamat_title: "Alamat", alamat_01: "Alamat", alamat_02: "Alamat", alamat_03: "Alamat", telepon: 011102223, fax: 011102224, email: "email@test.com", homepage: "www.homepage.com")

puts "Seeding ABadanUsaha..."
1.upto(10) do |number|
  ABadanUsaha.create({
    kode: number,
    nama: "Nama #{number}",
    no_urut: number
  })
end

puts "Seeding ASatuan..."
1.upto(5) do |number|
  ASatuan.create({
    simbol: "sim#{number}",
    nama: "Nama satuan #{number}",
    no_urut: number
  })
end

a_satuan = ASatuan.first
puts "Seeding AKemasan..."
1.upto(5) do |number|
  AKemasan.create({
    kode: ASatuan.find_by_id(a_satuan.id + number - 1).simbol,
    nama: "Nama kemasan #{number}",
    isi_volume: number,
    id_satuan: a_satuan.id + number - 1
  })
end

puts "Seeding ANegara..."
1.upto(10) do |number|
  ANegara.create({
    kode: "n#{number}",
    nama: "Nama #{number}",
    simbol: "s#{number}"    
  })
end

puts "Seeding AProvinsi..."
first_country = ANegara.first
1.upto(2) do |number|
  unique_id = "#{first_country.id}#{number}"
  AProvinsi.create({
    kode: "p#{unique_id}",
    nama: "Provinsi #{unique_id}",
    simbol: "s#{unique_id}",
    id_negara: first_country.id
  })
end

second_country = ANegara.find_by_id(first_country.id + 1)
1.upto(2) do |number|
  unique_id = "#{second_country.id}#{number}"
  AProvinsi.create({
    kode: "p#{unique_id}",
    nama: "Provinsi #{unique_id}",
    simbol: "s#{unique_id}",
    id_negara: second_country.id
  })
end

third_country = ANegara.find_by_id(second_country.id + 1)
1.upto(2) do |number|
  unique_id = "#{third_country.id}#{number}"
  AProvinsi.create({
    kode: "p#{unique_id}",
    nama: "Provinsi #{unique_id}",
    simbol: "s#{unique_id}",
    id_negara: third_country.id
  })
end

fourth_country = ANegara.find_by_id(third_country.id + 1)
1.upto(2) do |number|
  unique_id = "#{fourth_country.id}#{number}"
  AProvinsi.create({
    kode: "p#{unique_id}",
    nama: "Provinsi #{unique_id}",
    simbol: "s#{unique_id}",
    id_negara: fourth_country.id
  })
end

fifth_country = ANegara.find_by_id(fourth_country.id + 1)
1.upto(2) do |number|
  unique_id = "#{fifth_country.id}#{number}"
  AProvinsi.create({
    kode: "p#{unique_id}",
    nama: "Provinsi #{unique_id}",
    simbol: "s#{unique_id}",
    id_negara: fifth_country.id
  })
end

puts "Seeding ACity"
first_province = AProvinsi.first
1.upto(4) do |number|
  unique_id = "#{first_province.id}#{number}"
  ACity.create({
    kode: "c#{unique_id}",
    nama: "City #{unique_id}",
    simbol: "s#{unique_id}",
    id_negara: first_province.id_negara,
    id_provinsi: first_province.id
  })
end

second_province = AProvinsi.find_by_id(first_province.id + 1)
1.upto(4) do |number|
  unique_id = "#{second_province.id}#{number}"
  ACity.create({
    kode: "c#{unique_id}",
    nama: "City #{unique_id}",
    simbol: "s#{unique_id}",
    id_negara: second_province.id_negara,
    id_provinsi: second_province.id
  })
end

third_province = AProvinsi.find_by_id(second_province.id + 1)
1.upto(4) do |number|
  unique_id = "#{third_province.id}#{number}"
  ACity.create({
    kode: "c#{unique_id}",
    nama: "City #{unique_id}",
    simbol: "s#{unique_id}",
    id_negara: third_province.id_negara,
    id_provinsi: third_province.id
  })
end

fourth_province = AProvinsi.find_by_id(third_province.id + 1)
1.upto(4) do |number|
  unique_id = "#{fourth_province.id}#{number}"
  ACity.create({
    kode: "c#{unique_id}",
    nama: "City #{unique_id}",
    simbol: "s#{unique_id}",
    id_negara: fourth_province.id_negara,
    id_provinsi: fourth_province.id
  })
end

fifth_province = AProvinsi.find_by_id(fourth_province.id + 1)
1.upto(4) do |number|
  unique_id = "#{fifth_province.id}#{number}"
  ACity.create({
    kode: "c#{unique_id}",
    nama: "City #{unique_id}",
    simbol: "s#{unique_id}",
    id_negara: fifth_province.id_negara,
    id_provinsi: fifth_province.id
  })
end

1.upto(10) do |number|
  ATemplateCat.create({
    kategori: "kategori#{number}",
    kode: number,
    nama: "nama#{number}",
    simbol: "simbol#{number}",
    st_progress: 'ACTIVE'    
  })
end

AdminMsUser.delete_all
AdminMsUser.create(:login_name =>'0331960121', :id_group =>'00', :user_name =>'AIRMANSENA', :password =>'1111', :password_confirmation =>'1111', :limitlogin =>99, :tglcreate =>'2008-01-01', :tglpasswordexpired =>'2900-01-01', :tgllastlogin =>'2008-01-04', :pin =>'111111', :created_at =>'1899-12-30', :updated_at =>'1899-12-30', :status =>0)
AdminMsUser.create(:login_name =>'herman', :id_group =>'00', :user_name =>'herman', :password =>'1111', :password_confirmation =>'1111', :limitlogin =>1, :tglcreate =>'2012-09-24', :tglpasswordexpired =>'2012-09-24', :tgllastlogin =>'2012-09-24', :pin =>'1', :created_at =>'2012-09-24', :updated_at =>'2012-09-24', :status =>1)
AdminMsUser.create(:login_name =>'masterroot', :id_group =>'00', :user_name =>'MASTER ROOT', :password =>'1111', :password_confirmation =>'1111', :limitlogin =>99, :tglcreate =>'2007-06-04', :tglpasswordexpired =>'2900-06-04', :tgllastlogin =>'2008-01-30', :pin =>'333333', :created_at =>'1899-12-30', :updated_at =>'1899-12-30', :status =>0)

AdminMsGroup.delete_all
AdminMsGroup.create(:id_group =>'00', :namagroup =>'MASTER ROOT', :statusgroup =>0, :id_group_parent =>'ROOT', :created_at =>'1900-01-01', :updated_at =>'1900-01-01')
AdminMsGroup.create(:id_group =>'01', :namagroup =>'SUPER ADMINISTRATOR', :statusgroup =>0, :id_group_parent =>'00', :created_at =>'1900-01-01', :updated_at =>'1900-01-01')
AdminMsGroup.create(:id_group =>'02', :namagroup =>'ADMIN', :statusgroup =>0, :id_group_parent =>'01', :created_at =>'1900-01-01', :updated_at =>'1900-01-01')

AdminMsModul.delete_all
AdminMsModul.create(:id_modul =>0, :keterangan =>'-'                 , :status1 =>0, :nm_url=>'', :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsModul.create(:id_modul =>1, :keterangan =>'USER PROFILE'      , :status1 =>0, :nm_url=>'admin_ms_users', :created_at =>'1899-12-30', :updated_at =>'2012-11-10')
AdminMsModul.create(:id_modul =>2, :keterangan =>'ROLE LEVEL'        , :status1 =>0, :nm_url=>'admin_ms_groups', :created_at =>'1899-12-30', :updated_at =>'2012-11-10')
AdminMsModul.create(:id_modul =>3, :keterangan =>'Roles Level Access', :status1 =>0, :nm_url=>'admin_ms_menu_groups', :created_at =>'1899-12-30', :updated_at =>'2012-11-10')
AdminMsModul.create(:id_modul =>4, :keterangan =>'BRANCHES'          , :status1 =>0, :nm_url=>'admin_ms_branches', :created_at =>'1899-12-30', :updated_at =>'2012-11-10')
AdminMsModul.create(:id_modul =>5, :keterangan =>'CARRIER'           , :status1 =>0, :nm_url=>'carriers', :created_at =>'1899-12-30', :updated_at =>'2012-11-10')
AdminMsModul.create(:id_modul =>6, :keterangan =>'COUNTRIES'         , :status1 =>0, :nm_url=>'countries', :created_at =>'1899-12-30', :updated_at =>'2012-11-10')
AdminMsModul.create(:id_modul =>7, :keterangan =>'CURRENCY'          , :status1 =>0, :nm_url=>'currencies', :created_at =>'2012-11-10', :updated_at =>'2012-11-10')
AdminMsModul.create(:id_modul =>8, :keterangan =>'BUSINESS PARTNER'  , :status1 =>0, :nm_url=>'business_partners', :created_at =>'2012-11-10', :updated_at =>'2012-11-10')
AdminMsModul.create(:id_modul =>9, :keterangan =>'OUTBOUND'          , :status1 =>0, :nm_url=>'outbounds', :created_at =>'2012-11-10', :updated_at =>'2012-11-10')
AdminMsModul.create(:id_modul =>10, :keterangan =>'HS CODE'          , :status1 =>0, :nm_url=>'hs_codes', :created_at =>'2012-11-10', :updated_at =>'2012-11-10')

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
AdminMsMenu.create(:id_menu =>'0000', :id_menu_parent =>'ROOT', :status1 =>0, :levelmenu =>0, :id_modul =>0, :addparam =>'', :namamenu =>'MASTER ROOT', :nourut =>0, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0160', :id_menu_parent =>'0157', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Flight Reservation', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0157', :id_menu_parent =>'0143', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Transactions', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0156', :id_menu_parent =>'0150', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Commission', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0120', :id_menu_parent =>'0065', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Google Account Association', :nourut =>60, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0121', :id_menu_parent =>'0066', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Value Sets', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0003', :id_menu_parent =>'0000', :status1 =>0, :levelmenu =>1, :id_modul =>0, :addparam =>'', :namamenu =>'Alert', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0002', :id_menu_parent =>'0000', :status1 =>0, :levelmenu =>1, :id_modul =>0, :addparam =>'', :namamenu =>'Quick Launch', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0001', :id_menu_parent =>'0000', :status1 =>0, :levelmenu =>1, :id_modul =>0, :addparam =>'', :namamenu =>'Create New', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0158', :id_menu_parent =>'0143', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Analysis Tools', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0159', :id_menu_parent =>'0143', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Setup', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0150', :id_menu_parent =>'0142', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Setup', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0151', :id_menu_parent =>'0148', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*General Cash Advance Request', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0061', :id_menu_parent =>'0058', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'*Shipment Management', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0060', :id_menu_parent =>'0058', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'*Master Data Management', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0059', :id_menu_parent =>'0058', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'*General Setup', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0108', :id_menu_parent =>'0059', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Client', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0109', :id_menu_parent =>'0108', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Initial Client Setup', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0110', :id_menu_parent =>'0108', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Client', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0111', :id_menu_parent =>'0064', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Initial Organization Setup', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0112', :id_menu_parent =>'0064', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Enterprise Module Management', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0113', :id_menu_parent =>'0064', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Organization Type', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0114', :id_menu_parent =>'0064', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Organization', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0119', :id_menu_parent =>'0065', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Audit Trail', :nourut =>50, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0058', :id_menu_parent =>'0000', :status1 =>0, :levelmenu =>1, :id_modul =>0, :addparam =>'', :namamenu =>'Application', :nourut =>25, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0143', :id_menu_parent =>'0058', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'*Freight Management', :nourut =>70, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0144', :id_menu_parent =>'0059', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Fleet Management', :nourut =>80, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0145', :id_menu_parent =>'0058', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'*Warehouse Management', :nourut =>90, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0056', :id_menu_parent =>'0000', :status1 =>0, :levelmenu =>1, :id_modul =>0, :addparam =>'', :namamenu =>'Help', :nourut =>99, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0161', :id_menu_parent =>'0157', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Vessel Reservation', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0062', :id_menu_parent =>'0058', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'*Custom Clereance Management', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0063', :id_menu_parent =>'0066', :status1 =>0, :levelmenu =>3, :id_modul =>14, :addparam =>'', :namamenu =>'*Ports', :nourut =>50, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0064', :id_menu_parent =>'0059', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Enterprise Model', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0065', :id_menu_parent =>'0059', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Security', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0066', :id_menu_parent =>'0059', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Application', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0067', :id_menu_parent =>'0071', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Business Partner Category', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0128', :id_menu_parent =>'0072', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Serial Number Sequence', :nourut =>60, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0068', :id_menu_parent =>'0071', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Invoice Schedule', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0069', :id_menu_parent =>'0071', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Title', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0127', :id_menu_parent =>'0072', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Lot Number Sequence', :nourut =>50, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0070', :id_menu_parent =>'0071', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Payment Term', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0071', :id_menu_parent =>'0060', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Business Partner Setup', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0072', :id_menu_parent =>'0060', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Product Setup', :nourut =>50, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0073', :id_menu_parent =>'0072', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Product Category', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0074', :id_menu_parent =>'0060', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Pricing', :nourut =>60, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0075', :id_menu_parent =>'0071', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Return Reasons', :nourut =>50, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0076', :id_menu_parent =>'0074', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Price List Schema', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0133', :id_menu_parent =>'0086', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Import Declarations', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0077', :id_menu_parent =>'0074', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Price List', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0078', :id_menu_parent =>'0074', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Create All Price Lists', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0131', :id_menu_parent =>'0083', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Inbound', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0079', :id_menu_parent =>'0074', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Price Adjustments', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0129', :id_menu_parent =>'0074', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Price List Report', :nourut =>50, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0135', :id_menu_parent =>'0062', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Setup', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0081', :id_menu_parent =>'0060', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Business Partner Info', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0134', :id_menu_parent =>'0062', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Analysis Tools', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0082', :id_menu_parent =>'0060', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Product', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0083', :id_menu_parent =>'0061', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Transactions', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0084', :id_menu_parent =>'0061', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Analysis Tools', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0085', :id_menu_parent =>'0061', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Setup', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0086', :id_menu_parent =>'0062', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Transactions', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0132', :id_menu_parent =>'0086', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Export Declarations', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0087', :id_menu_parent =>'0071', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Salary Category', :nourut =>80, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0126', :id_menu_parent =>'0072', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Attribute Set', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0088', :id_menu_parent =>'0071', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Discount', :nourut =>70, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0089', :id_menu_parent =>'0071', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Volume Discount', :nourut =>60, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0090', :id_menu_parent =>'0058', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Task Management', :nourut =>50, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0152', :id_menu_parent =>'0148', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Operational Cash Advance Request', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0153', :id_menu_parent =>'0148', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Payment Request', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0154', :id_menu_parent =>'0148', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Invoice Draft', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0118', :id_menu_parent =>'0065', :status1 =>0, :levelmenu =>4, :id_modul =>4, :addparam =>'', :namamenu =>'Branch', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0115', :id_menu_parent =>'0065', :status1 =>0, :levelmenu =>4, :id_modul =>1, :addparam =>'', :namamenu =>'User', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0117', :id_menu_parent =>'0065', :status1 =>0, :levelmenu =>4, :id_modul =>3, :addparam =>'', :namamenu =>'Role Level Access', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0124', :id_menu_parent =>'0066', :status1 =>0, :levelmenu =>4, :id_modul =>7, :addparam =>'', :namamenu =>'Currencies', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0122', :id_menu_parent =>'0066', :status1 =>0, :levelmenu =>4, :id_modul =>5, :addparam =>'', :namamenu =>'Carriers', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0123', :id_menu_parent =>'0066', :status1 =>0, :levelmenu =>4, :id_modul =>6, :addparam =>'', :namamenu =>'Countries', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0080', :id_menu_parent =>'0060', :status1 =>0, :levelmenu =>4, :id_modul =>8, :addparam =>'', :namamenu =>'Business Partner', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0130', :id_menu_parent =>'0083', :status1 =>0, :levelmenu =>4, :id_modul =>9, :addparam =>'', :namamenu =>'Outbound', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0155', :id_menu_parent =>'0148', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Commission Payment', :nourut =>50, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0146', :id_menu_parent =>'0058', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'*Workforce Management', :nourut =>100, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0147', :id_menu_parent =>'0058', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'*Workshop Management', :nourut =>110, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0148', :id_menu_parent =>'0142', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Transactions', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0149', :id_menu_parent =>'0142', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Analysis Tools', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0096', :id_menu_parent =>'0072', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Unit Of Measure', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0125', :id_menu_parent =>'0072', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Attribute', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0137', :id_menu_parent =>'0090', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Transactions', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0138', :id_menu_parent =>'0137', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Task Assignment', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0139', :id_menu_parent =>'0090', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Analysis Tools', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0140', :id_menu_parent =>'0090', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Setup', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0141', :id_menu_parent =>'0140', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Activities & Standard Costs', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0142', :id_menu_parent =>'0058', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'*Financial Management', :nourut =>60, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0107', :id_menu_parent =>'0000', :status1 =>0, :levelmenu =>1, :id_modul =>0, :addparam =>'', :namamenu =>'Log-out', :nourut =>110, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0162', :id_menu_parent =>'0157', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Truck Reservation', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0163', :id_menu_parent =>'0159', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Flight Schedules', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0164', :id_menu_parent =>'0159', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Buying Rates', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0165', :id_menu_parent =>'0058', :status1 =>0, :levelmenu =>2, :id_modul =>0, :addparam =>'', :namamenu =>'*Fleet Management', :nourut =>75, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0166', :id_menu_parent =>'0165', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Transactions', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0167', :id_menu_parent =>'0165', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Analysis Tools', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0168', :id_menu_parent =>'0165', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Setup', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0169', :id_menu_parent =>'0166', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Fleet Pairing', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0170', :id_menu_parent =>'0166', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Fleet and Driver Pairing', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0171', :id_menu_parent =>'0166', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Route Planning', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0172', :id_menu_parent =>'0166', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Delivery/ Pick-up Order', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0173', :id_menu_parent =>'0166', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Dispatch', :nourut =>50, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0174', :id_menu_parent =>'0166', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Fleet Inspection', :nourut =>60, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0175', :id_menu_parent =>'0166', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Trip Monitoring', :nourut =>70, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0176', :id_menu_parent =>'0166', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Debriefing', :nourut =>80, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0177', :id_menu_parent =>'0168', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Delivery and Pickup Zones', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0178', :id_menu_parent =>'0168', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Fleet Type', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0179', :id_menu_parent =>'0168', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Fleet', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0180', :id_menu_parent =>'0145', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Transactions', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0181', :id_menu_parent =>'0145', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Analysis Tools', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0182', :id_menu_parent =>'0145', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Setup', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0183', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Physical Inventory', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0184', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Goods Transaction', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0185', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Inbound Receiving', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0186', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Inbound Putaway', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0187', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Internal Transfer', :nourut =>50, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0188', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Outbound Picking', :nourut =>60, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0189', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Packing Instructions', :nourut =>70, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0190', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Packing Material Request', :nourut =>80, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0191', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Packing List', :nourut =>90, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0192', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Goods Issue', :nourut =>100, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0193', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Shipping Manifest', :nourut =>110, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0194', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Cycle Count', :nourut =>120, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0195', :id_menu_parent =>'0180', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Stock Adjustment', :nourut =>130, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0196', :id_menu_parent =>'0182', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'Warehouse and Storage Bins', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0197', :id_menu_parent =>'0146', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Transactions', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0198', :id_menu_parent =>'0146', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Analysis Tools', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0199', :id_menu_parent =>'0146', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Setup', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0200', :id_menu_parent =>'0197', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Work Schedule', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0201', :id_menu_parent =>'0197', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Attendance', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0202', :id_menu_parent =>'0197', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Leaves', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0203', :id_menu_parent =>'0197', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Health Check', :nourut =>40, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0204', :id_menu_parent =>'0197', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Payroll', :nourut =>50, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0205', :id_menu_parent =>'0199', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Management Structure', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0206', :id_menu_parent =>'0199', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Salary Structure', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0207', :id_menu_parent =>'0199', :status1 =>0, :levelmenu =>4, :id_modul =>0, :addparam =>'', :namamenu =>'*Leave Policy', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0208', :id_menu_parent =>'0147', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Transactions', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0209', :id_menu_parent =>'0147', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Analysis Tools', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0210', :id_menu_parent =>'0147', :status1 =>0, :levelmenu =>3, :id_modul =>0, :addparam =>'', :namamenu =>'*Setup', :nourut =>30, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0116', :id_menu_parent =>'0065', :status1 =>0, :levelmenu =>4, :id_modul =>2, :addparam =>'', :namamenu =>'Role Level', :nourut =>20, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenu.create(:id_menu =>'0136', :id_menu_parent =>'0135', :status1 =>0, :levelmenu =>4, :id_modul =>10, :addparam =>'', :namamenu =>'HS Codes', :nourut =>10, :created_at =>'2012-12-12', :updated_at =>'2012-12-12')
AdminMsMenuGroup.delete_all
AdminMsMenuGroup.create(:id_menu =>'0001', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0002', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0003', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0056', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0058', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0059', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0060', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0061', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0062', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0063', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0064', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0065', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0066', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0067', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0068', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0069', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0070', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0071', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0072', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0073', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0074', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0075', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0076', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0077', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0078', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0079', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0080', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0081', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0082', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0083', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0084', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0085', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0086', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0087', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0088', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0089', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0090', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0096', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0106', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0107', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0108', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0109', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0110', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0111', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0112', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0113', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0114', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0115', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0116', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0117', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0118', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0119', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0120', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0121', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0122', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0123', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0124', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0125', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0126', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0127', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0128', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0129', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0130', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0131', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0132', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0133', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0134', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0135', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0136', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0137', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0138', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0139', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0140', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0141', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0142', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0143', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0144', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0145', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0146', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0147', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0148', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0149', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0150', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0151', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0152', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0153', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0154', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0155', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0156', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0157', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0158', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0159', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0160', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0161', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0162', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0163', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0164', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0165', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0166', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0167', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0168', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0169', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0170', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0171', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0172', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0173', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0174', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0175', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0176', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0177', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0178', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0179', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0180', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0181', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0182', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0183', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0184', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0185', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0186', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0187', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0188', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0189', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0190', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0191', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0192', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0193', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0194', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0195', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0196', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0197', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0198', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0199', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0200', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0201', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0202', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0203', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0204', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0205', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0206', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0207', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0208', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0209', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroup.create(:id_menu =>'0210', :id_group =>'00',  :statusmenu =>1, :created_at =>'1899-12-30', :updated_at =>'1899-12-30')
AdminMsMenuGroupNav.delete_all
AdminMsMenuGroupNav.create(:id_menu =>'0063', :id_group =>'00', :id_navigasi =>0, :created_at =>'2012-09-30', :updated_at =>'2012-09-30')
