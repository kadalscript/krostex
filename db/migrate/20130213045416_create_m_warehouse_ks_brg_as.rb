class CreateMWarehouseKsBrgAs < ActiveRecord::Migration
  def change
    create_table :m_warehouse_ks_brg_as do |t|
      t.string :id_cabang, limit:2
      t.string :id_gudang, limit:5
      t.string :kode_brg, limit:20
      t.decimal :qty_real, default:0
      t.decimal :qty_mc, default:0

      t.timestamps
    end
  end
end
