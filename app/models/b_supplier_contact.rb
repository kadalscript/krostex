class BSupplierContact < ActiveRecord::Base
  attr_accessible   :kode        , :kode_contact, :kode_kategori, :nama, 
                    :nama_lengkap, :telepon     , :handphone    , :email, 
                    :tgl_lahir   , :status1     , :st_progress  , :updated_by
  belongs_to :b_supplier                  
end
