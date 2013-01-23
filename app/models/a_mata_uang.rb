class AMataUang < ActiveRecord::Base
  attr_accessible :kode, :nama, :no_urut, :simbol, :updated_by, :created_at, :updated_at
  has_many :m_beli_po_first_h, class_name: 'MBeliPoFirstH', foreign_key: 'id_valuta'
  has_many :notas, class_name: 'MBeliNotaFirstH', foreign_key: 'id_supplier' # Related to many nota
end
