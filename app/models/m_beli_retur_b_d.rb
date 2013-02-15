class MBeliReturBD < ActiveRecord::Base
  attr_accessible :diskon, :harga, :id_valuta, :kode_barang, :kode_brg_ext, :kode_tmp, :qty, :total_kurang_diskon, :total_qty_kali_harga, :total_qty_kali_harga_kali_diskon
end
