class BSupplierAlamat < ActiveRecord::Base
  attr_accessible :alamat_01, :alamat_02, :alamat_title, :b_supplier_id, :fax, :id_kota, :id_negara, :id_provinsi, :kode, :kode_alamat, :kode_kategori, :kode_pos, :st_progress, :status1, :telepon, :updated_by
  belongs_to :b_supplier_alamat
end
