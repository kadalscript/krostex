class CreateMWarehouseKsBrgCExts < ActiveRecord::Migration
  def change
    create_table :m_warehouse_ks_brg_c_exts do |t|
      t.string :id_cabang, limit:5
      t.string :id_gudang, limit:10
      t.string :kode_brg, limit:20
      t.string :kode_brg_ext, limit:30
      t.decimal :qty_real, default:0
      t.decimal :qty_mc, default:0
      

      t.timestamps
    end
  end
end
