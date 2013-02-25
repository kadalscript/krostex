class BSupplierAccount < ActiveRecord::Base
  set_table_name :b_supplier_d_accounts
  attr_accessible :kode, :kode_account, :kode_bank, :nama_cabang, :nama_pemilik, :st_progress, :status1, :updated_by
end
