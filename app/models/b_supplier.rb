class BSupplier < ActiveRecord::Base
  attr_accessible :email, :homepage, :id_badan_usaha, :kode, :nama, :st_progress, :status1, :updated_by
  has_many :b_supplier_alamats
end
