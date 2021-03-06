class BSupplier < ActiveRecord::Base
  set_table_name :b_supplier_as
  attr_accessible :email, :homepage, :id_badan_usaha, :kode, :nama, :st_progress, :status1, :updated_by
  has_many    :alamat, class_name: 'BSupplierAlamat', foreign_key: 'b_supplier_id'
  has_many    :b_supplier_contacts
  has_many    :m_beli_po_first_hs, class_name: 'MBeliPoFirstH', foreign_key: 'id_supplier'
  has_many :notas, class_name: 'MBeliNotaFirstH', foreign_key: 'id_supplier' # Related to many nota
  belongs_to  :a_badan_usaha, class_name: "ABadanUsaha", foreign_key: 'kode'
  before_save :fungsi_before_save

  def fungsi_before_save
    self.status1 = self.st_progress.eql?('Active') ? 0 : 99 
  end

end
