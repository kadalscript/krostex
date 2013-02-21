class MWarehouseKsBrgBD < ActiveRecord::Base
  attr_accessible :catatan, :id_cabang, :id_gudang, :keterangan, :kode_brg, :kode_brg_lot, :no_reff, :qty_awal, :qty_keluar, :qty_masuk, :qty_saldo, :simbol, :tanggal, :tipe_stok
end
