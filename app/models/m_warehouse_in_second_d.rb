class MWarehouseInSecondD < ActiveRecord::Base
  attr_accessible :created_at, :kode_brg, :kode_brg_ext, :kode_brg_lot, :kode_tmp, :qty, :updated_at, :satuan_id
  belongs_to :m_warehouse_in_first_h, class_name: 'MWarehouseInFirstH', foreign_key: 'kode_tmp'
  belongs_to :satuan, class_name: 'ASatuan', foreign_key: 'satuan_id'
end
