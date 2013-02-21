class CreateMWarehouseKsBrgEExtLots < ActiveRecord::Migration
  def change
    create_table :m_warehouse_ks_brg_e_ext_lots do |t|
      t.string :id_cabang, limit:5
      t.string :id_gudang, limit:5
      t.string :kode_brg, limit:20
      t.string :kode_brg_ext, limit:30
      t.string :kode_lot_number, limit:40
      t.datetime :tanggal
      t.string :simbol, limit:5
      t.decimal :qty_in, default:0
      t.decimal :qty_out_mc, default:0
      t.decimal :qty_out_real, default:0
      t.integer :is_close_mc, default:0
      t.integer :is_close_real, default:0
      t.integer :status1, default:0
      t.string :updated_by, limit:30
      t.string :st_progress, limit:20

      t.timestamps
    end
  end
end
