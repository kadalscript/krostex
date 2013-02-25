class CreateMWarehouseKsBrgBDs < ActiveRecord::Migration
  def change
    create_table :m_warehouse_ks_brg_b_ds do |t|
      t.string   :no_urut  , limit:20
      t.string   :id_cabang, limit:5
      t.string   :id_gudang, limit:5
      t.string   :tipe_stok, limit:2
      t.string   :kode_brg, limit:20
      t.string   :kode_brg_lot, limit:40
      t.string   :no_reff, limit:30
      t.datetime :tanggal
      t.string   :simbol, limit:5
      t.string   :keterangan, limit:150
      t.string   :catatan, limit:150
      t.decimal  :qty_awal, default:0
      t.decimal  :qty_masuk, default:0
      t.decimal  :qty_keluar, default:0
      t.decimal  :qty_saldo, default:0
      t.timestamps
    end
  end
end
