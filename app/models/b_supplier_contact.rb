class BSupplierContact < ActiveRecord::Base
  set_table_name :b_supplier_c_contacts
  attr_accessible   :kode        , :kode_contact, :kode_kategori, :nama, 
                    :nama_lengkap, :telepon     , :handphone    , :email, 
                    :tgl_lahir   , :status1     , :st_progress  , :updated_by
  belongs_to :b_supplier                  
end
