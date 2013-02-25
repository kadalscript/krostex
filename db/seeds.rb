ATemplateCat.delete_all
ATemplateCat.create(:kategori =>'ALAMAT', :kode =>'201301100133', :nama =>'ALAMAT NPWP', :simbol =>'02', :status1 =>0, :st_progress =>'ACTIVE', :updated_by =>'HERMAN', :created_at =>'2013-01-10', :updated_at =>'2013-01-10')
ATemplateCat.create(:kategori =>'ALAMAT', :kode =>'201301090133', :nama =>'ALAMAT KANTOR', :simbol =>'01', :status1 =>0, :st_progress =>'ACTIVE', :updated_by =>'HERMAN', :created_at =>'1900-01-01', :updated_at =>'1900-01-01')
ATemplateCat.create(:kategori =>'ALAMAT', :kode =>'201301100134', :nama =>'ALAMAT KIRIM', :simbol =>'03', :status1 =>0, :st_progress =>'ACTIVE', :updated_by =>'HERMAN', :created_at =>'2013-01-10', :updated_at =>'2013-01-10')
<<<<<<< HEAD

ABadanUsaha.create([
  { kode: 'K1', nama: 'Badan Usaha 1', no_urut: 1 },
  { kode: 'K2', nama: 'Badan Usaha 2', no_urut: 2 }
])

a_badan_usaha = ABadanUsaha.first
a_badan_usaha_2 = ABadanUsaha.find_by_id(a_badan_usaha.id + 1)

BSupplier.create([
  { kode: "Kode1", nama: "Nama Supplier 1", id_badan_usaha: a_badan_usaha.id, email: 'supplier1@email.com', homepage: 'www.homepage.com', status1: 0 },
  { kode: "Kode2", nama: "Nama Supplier 2", id_badan_usaha: a_badan_usaha_2.id, email: 'supplier1@email.com', homepage: 'www.homepage.com', status1: 99 }
])

b_supplier = BSupplier.first
b_supplier_2 = BSupplier.find_by_id(b_supplier.id + 1)

ANegara.create([
  { kode: 'K1', nama: 'Negara 1', simbol: 'S1' },
  { kode: 'K2', nama: 'Negara 2', simbol: 'S2' }
])

a_negara = ANegara.first
a_negara_2 = ANegara.find_by_id(a_negara.id + 1)

AProvinsi.create([
  { kode: 'K1', nama: 'Provinsi 1', simbol: 'S1', id_negara: a_negara.id },
  { kode: 'K2', nama: 'Provinsi 2', simbol: 'S2', id_negara: a_negara_2.id }
])

a_provinsi = AProvinsi.first
a_provinsi_2 = AProvinsi.find_by_id(a_provinsi.id + 1)

ACity.create([
  { kode: 'K1', nama: 'City 1', simbol: 'S1', id_negara: a_negara.id, id_provinsi: a_provinsi.id },
  { kode: 'K2', nama: 'City 2', simbol: 'S2', id_negara: a_negara.id, id_provinsi: a_provinsi_2.id }
])

a_city = ACity.first
a_city_2 = ACity.find_by_id(a_city.id + 1)

BSupplierAlamat.create([
  { kode_alamat: 'KA1', kode: 'K1', kode_kategori: 'Kode Kategori 1', alamat_title: 'Alamat Supplier 1', id_negara: a_negara.id, id_provinsi: a_provinsi.id, id_kota: a_city.id, telepon: '11111111', fax: '11111112', kode_pos: '12345', b_supplier_id: b_supplier.id },
  { kode_alamat: 'KA2', kode: 'K2', kode_kategori: 'Kode Kategori 2', alamat_title: 'Alamat Supplier 2', id_negara: a_negara_2.id, id_provinsi: a_provinsi_2.id, id_kota: a_city_2.id, telepon: '22222222', fax: '22222223', kode_pos: '12346', b_supplier_id: b_supplier_2.id }
])

ADepartment.create([
  { kode: 'K1', nama: 'Department 1', simbol: 'S1' },
  { kode: 'K2', nama: 'Department 2', simbol: 'S2' }
])

a_department = ADepartment.first
a_department_2 = ADepartment.find_by_id(a_department.id + 1)

AGolongan.create([
  { kode: 'K1', nama: 'Golongan 1', simbol: 'S1', id_department: a_department.id },
  { kode: 'K2', nama: 'Golongan 2', simbol: 'S2', id_department: a_department_2.id },
])

a_golongan = AGolongan.first
a_golongan_2 = AGolongan.find_by_id(a_golongan.id + 1)

AType.create([
  { kode: 'K1', nama: 'Jenis 1', simbol: 'S1', id_department: a_department.id, id_golongan: a_golongan.id },
  { kode: 'K2', nama: 'Jenis 2', simbol: 'S2', id_department: a_department_2.id, id_golongan: a_golongan_2.id }
])

a_type = AType.first
a_type_2 = AType.find_by_id(a_type.id + 1)

ALevelFour.create([
  { kode: 'K1', nama: 'Level Four 1', simbol: 'S1', id_department: a_department.id, id_golongan: a_golongan.id, id_type: a_type.id },
  { kode: 'K2', nama: 'Level Four 2', simbol: 'S2', id_department: a_department_2.id, id_golongan: a_golongan_2.id, id_type: a_type_2.id }
])

a_level_four = ALevelFour.first
a_level_four_2 = ALevelFour.find_by_id(a_level_four.id + 1)

ALevelFive.create([
  { kode: 'K1', nama: 'Level Five 1', simbol: 'S1', id_department: a_department.id, id_golongan: a_golongan.id, id_type: a_type.id, id_level_four: a_level_four.id },
  { kode: 'K2', nama: 'Level Five 2', simbol: 'S2', id_department: a_department_2.id, id_golongan: a_golongan_2.id, id_type: a_type_2.id, id_level_four: a_level_four_2.id }
])

a_level_five = ALevelFive.first
a_level_five_2 = ALevelFive.find_by_id(a_level_five.id + 1)

ASatuan.create([
  { simbol: 'S1', nama: 'Satuan 1', no_urut: 1 },
  { simbol: 'S2', nama: 'Satuan 2', no_urut: 2 }
])

a_satuan = ASatuan.first
a_satuan_2 = ASatuan.find_by_id(a_satuan.id + 1)

BBarang.create([
  { kode: 'K1', nama: 'Barang 1', id_department: a_department.id, id_golongan: a_golongan.id, id_type: a_type.id, id_level_four: a_level_four.id, id_level_five: a_level_five.id, id_satuan: a_satuan.id },
  { kode: 'K2', nama: 'Barang 2', id_department: a_department_2.id, id_golongan: a_golongan_2.id, id_type: a_type_2.id, id_level_four: a_level_four_2.id, id_level_five: a_level_five_2.id, id_satuan: a_satuan_2.id }
])

AKemasan.create([
  { kode: 'K1', nama: 'Kemasan 1', isi_volume: 1, id_satuan: a_satuan.id },
  { kode: 'K2', nama: 'Kemasan 2', isi_volume: 2, id_satuan: a_satuan_2.id }
])

supplier = BSupplier.first
barang = BBarang.first
kemasan = AKemasan.first
valuta = AMataUang.first
satuan = ASatuan.first
second_supplier = BSupplier.find_by_id(supplier.id + 1)
second_barang = BBarang.find_by_id(barang.id + 1)
second_kemasan = AKemasan.find_by_id(kemasan.id + 1)
second_valuta = AMataUang.find_by_id(valuta.id + 1)
second_satuan = ASatuan.find_by_id(satuan.id + 1)
  
BSupplierHistoryQuotation.create([
  { 
    kode: supplier.kode, 
    kode_brg: barang.kode,
    id_satuan_kemasan: kemasan.kode,
    penawaran_kode_cur: 1234, 
    penawaran_tgl_cur: DateTime.now,
    penawaran_kode_valuta_cur: valuta.kode,
    penawaran_harga_cur: 10000, 
    penawaran_min_order_cur: 100,
    penawaran_kode_satuan_cur: satuan.simbol,
    penawaran_waktu_kirim_cur: 10,
    penawaran_kode_2: 1235,
    penawaran_tgl_2: 1.hours.from_now,
    penawaran_kode_valuta_2: valuta.kode,
    penawaran_harga_2: 20000,
    penawaran_min_order_2: 200,
    penawaran_kode_satuan_2: satuan.simbol,
    penawaran_waktu_kirim_2: 20,
    penawaran_kode_3: 1236,
    penawaran_tgl_3: 2.hours.from_now,
    penawaran_kode_valuta_3: valuta.kode,
    penawaran_harga_3: 30000,
    penawaran_min_order_3: 300,
    penawaran_kode_satuan_3: satuan.simbol,
    penawaran_waktu_kirim_3: 30,
    penawaran_kode_4: 1237,
    penawaran_tgl_4: 3.hours.from_now,
    penawaran_kode_valuta_4: valuta.kode,
    penawaran_harga_4: 40000,
    penawaran_min_order_4: 400,
    penawaran_kode_satuan_4: satuan.simbol,
    penawaran_waktu_kirim_4: 40
  },
  {
    kode: second_supplier.kode,
    kode_brg: second_barang.kode,
    id_satuan_kemasan: second_kemasan.kode,
    penawaran_kode_cur: 1244,
    penawaran_tgl_cur: DateTime.now,
    penawaran_kode_valuta_cur: second_valuta.kode,
    penawaran_harga_cur: 11000,
    penawaran_min_order_cur: 110,
    penawaran_kode_satuan_cur: second_satuan.simbol,
    penawaran_waktu_kirim_cur: 11,
    penawaran_kode_2: 1245,
    penawaran_tgl_2: 1.hours.from_now,
    penawaran_kode_valuta_2: second_valuta.kode,
    penawaran_harga_2: 21000,
    penawaran_min_order_2: 210,
    penawaran_kode_satuan_2: second_satuan.simbol,
    penawaran_waktu_kirim_2: 21,
    penawaran_kode_3: 1246,
    penawaran_tgl_3: 2.hours.from_now,
    penawaran_kode_valuta_3: second_valuta.kode,
    penawaran_harga_3: 31000,
    penawaran_min_order_3: 310,
    penawaran_kode_satuan_3: second_satuan.simbol,
    penawaran_waktu_kirim_3: 31,
    penawaran_kode_4: 1247,
    penawaran_tgl_4: 3.hours.from_now,
    penawaran_kode_valuta_4: second_valuta.kode,
    penawaran_harga_4: 41000,
    penawaran_min_order_4: 410,
    penawaran_kode_satuan_4: second_satuan.simbol,
    penawaran_waktu_kirim_4: 41
  }
])
=======
ATemplateCat.create(:kategori =>'ALAMAT', :kode =>'20130111064249', :nama =>'ALAMAT TAGIHAN', :simbol =>'AT', :status1 =>99, :st_progress =>'De-Active', :updated_by =>'masterroot', :created_at =>'2013-01-11', :updated_at =>'2013-01-11')
ATemplateCat.create(:kategori =>'CONTACT', :kode =>'20130116132824', :nama =>'NAMA PEMILIK', :simbol =>'NP', :status1 =>0, :st_progress =>'ACTVIE', :updated_by =>'', :created_at =>'2013-01-16', :updated_at =>'2013-01-16')
ATemplateCat.create(:kategori =>'CONTACT', :kode =>'20130116132857', :nama =>'PURCHASING', :simbol =>'PC', :status1 =>0, :st_progress =>'ACTVIE', :updated_by =>'', :created_at =>'2013-01-16', :updated_at =>'2013-01-16')
ATemplateCat.create(:kategori =>'CONTACT', :kode =>'20130116132908', :nama =>'FINANCE', :simbol =>'FA', :status1 =>0, :st_progress =>'ACTVIE', :updated_by =>'', :created_at =>'2013-01-16', :updated_at =>'2013-01-16')
ATemplateCat.create(:kategori =>'CONTACT', :kode =>'20130116132921', :nama =>'WAREHOUSE', :simbol =>'WR', :status1 =>0, :st_progress =>'ACTVIE', :updated_by =>'', :created_at =>'2013-01-16', :updated_at =>'2013-01-16')
ATemplateCat.create(:kategori =>'WRH_IN', :kode =>'20130127021334', :nama =>'BTB PEMBELIAN', :simbol =>'BTB', :status1 =>0, :st_progress =>'ACTVIE', :updated_by =>'', :created_at =>'2013-01-27', :updated_at =>'2013-01-27')
ATemplateCat.create(:kategori =>'WRH_IN', :kode =>'20130127021410', :nama =>'BTB LAIN-LAIN', :simbol =>'BTZ', :status1 =>0, :st_progress =>'ACTVIE', :updated_by =>'', :created_at =>'2013-01-27', :updated_at =>'2013-01-27')
ATemplateCat.create(:kategori =>'WRH_OUT', :kode =>'20130212164157', :nama =>'SJ RETUR PEMBELIAN', :simbol =>'SJ1', :status1 =>0, :st_progress =>'ACTVIE', :updated_by =>'', :created_at =>'2013-02-12', :updated_at =>'2013-02-12')
ATemplateCat.create(:kategori =>'WRH_OUT', :kode =>'20130212164229', :nama =>'SURAT JALAN PENJUALAN', :simbol =>'SJ0', :status1 =>0, :st_progress =>'ACTVIE', :updated_by =>'', :created_at =>'2013-02-12', :updated_at =>'2013-02-12')
>>>>>>> 612b98ad51379a56beb3072b9606960fa4c75687
