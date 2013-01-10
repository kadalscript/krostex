class AMataUang < ActiveRecord::Base
  attr_accessible :kode, :nama, :no_urut, :simbol, :updated_by
  has_many :m_beli_po_first_h, class_name: 'MBeliPoFirstH', foreign_key: 'id_valuta'
end
