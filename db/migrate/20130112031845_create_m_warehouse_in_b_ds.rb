class CreateMWarehouseInBDs < ActiveRecord::Migration
  def change
    create_table :m_warehouse_in_b_ds do |t|
      t.string :kode_tmp        , limit:20
      t.string :kode_brg        , limit:20
      t.string :kode_brg_ext    , limit:30
      t.string :kode_brg_lot    , limit:30
      t.decimal:qty_kemasan_unit, default:0
      t.decimal:qty_kemasan     , default:0
      t.decimal:qty             , default:0
      t.string :id_cabang       , limit:10
      t.string :id_gudang       , limit:10
      
      t.timestamps
    end
  end
end
