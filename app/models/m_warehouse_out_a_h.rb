class MWarehouseOutAH < ActiveRecord::Base
  attr_accessible :created_at, :id_cabang, :id_customer, :id_gudang_out, :id_invoice_disp, :id_po_disp, :id_reff_disp, :id_so_disp, :id_supplier, :id_surat_jalan, :is_drafted, :is_invoice, :jns_inv, :keterangan, :kode_disp, :kode_tmp, :nama_referensi, :no_revisi, :simbol, :st_progress, :status1, :tanggal, :total_qty_out, :updated_at, :updated_by
end
