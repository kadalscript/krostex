class MBeliPoSecondD < ActiveRecord::Base
  attr_accessible :diskon, :harga, :id_satuan_kemasan, :id_valuta, :kode_brg,
                  :kode_tmp, :qty, :qty_btb, :qty_kemasan, :total_kurang_diskon,
                  :total_qty_kali_harga, :total_qty_kali_harga_kali_diskon
  belongs_to :m_beli_po_first_h, class_name: 'MBeliPoFirstH', foreign_key: 'kode_tmp'
  belongs_to :a_kemasan, class_name: 'AKemasan', foreign_key: 'id_satuan_kemasan'
  before_save :updating_total
  before_update :updating_total

  def updating_total
    self.total_qty_kali_harga = self.qty * self.harga
    self.total_qty_kali_harga_kali_diskon = (self.total_qty_kali_harga * self.diskon)/100    
    self.total_kurang_diskon = self.total_qty_kali_harga - self.total_qty_kali_harga_kali_diskon
  end
end
