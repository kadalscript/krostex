class MBeliNotaSecondD < ActiveRecord::Base
  attr_accessible :diskon, :harga, :id_valuta, :kode_barang, :kode_tmp, :qty, :total_kurang_diskon, :total_qty_kali_harga, :total_qty_kali_harga_kali_diskon
  belongs_to :header, class_name: 'MBeliNotaFirstH', foreign_key: 'kode_tmp'
end
