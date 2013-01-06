class MBeliPoSecondD < ActiveRecord::Base
  attr_accessible :diskon, :harga, :id_satuan_kemasan, :id_valuta, :kode_barang,
                  :kode_tmp, :qty, :qty_btb, :qty_kemasan, :total_kurang_diskon,
                  :total_qty_kali_harga, :total_qty_kali_harga_kali_diskon
  belongs_to :m_beli_po_first_h, class_name: 'MBeliPoFirstH', foreign_key: 'kode_tmp'
  belongs_to :a_kemasan, class_name: 'AKemasan', foreign_key: 'id_satuan_kemasan'
end
