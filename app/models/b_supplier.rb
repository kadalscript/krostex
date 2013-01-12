class BSupplier < ActiveRecord::Base
  attr_accessible :email, :homepage, :id_badan_usaha, :kode, :nama, :st_progress, :status1, :updated_by
  has_many    :b_supplier_alamats
  has_many    :b_supplier_contacts
  has_many    :m_beli_po_first_hs, class_name: 'MBeliPoFirstH', foreign_key: 'id_supplier'
  belongs_to  :a_badan_usaha, class_name: "ABadanUsaha", foreign_key: 'kode'
  before_save :fungsi_before_save

  def fungsi_before_save
    self.status1 = self.st_progress.eql?('Active') ? 0 : 99 
  end

end
