class MWarehouseKsBrgEExtLot < ActiveRecord::Base
  attr_accessible :id_cabang, :id_gudang, :is_close_mc, :is_close_real, :kode_brg, :kode_brg_ext, :kode_lot_number, :qty_in, :qty_out_mc, :qty_out_real, :simbol, :st_progress, :status1, :tanggal, :updated_by
end
