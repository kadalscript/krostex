class MWarehouseInFirstH < ActiveRecord::Base
  attr_accessible :created_at, :id_cabang, :id_customer, :id_gudang_potong, :id_nota_beli_disp, :id_po_disp, :id_reff_disp, :id_supplier, :id_surat_jalan, :is_nota, :jns_inv, :keterangan, :kode_disp, :kode_tmp, :simbol, :st_progress, :status1, :tanggal, :total_qty_in, :updated_at, :updated_by, :is_drafted
  has_many :m_warehouse_in_second_ds, class_name: 'MWarehouseInSecondD', foreign_key: 'kode_tmp'
end
