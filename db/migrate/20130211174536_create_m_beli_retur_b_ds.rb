class CreateMBeliReturBDs < ActiveRecord::Migration
  def change
    create_table :m_beli_retur_b_ds do |t|
      t.string :kode_tmp, limit: 20
      t.string :kode_brg, limit: 20
      t.string :kode_brg_ext, limit: 30
      t.decimal:qty_kemasan_unit, default:0
      t.decimal:qty_kemasan     , default:0
      t.decimal :qty, default:0
      t.decimal :harga, default:0
      t.decimal :diskon, default:0
      t.decimal :total_qty_kali_harga, default:0
      t.decimal :total_qty_kali_harga_kali_diskon, default:0
      t.decimal :total_kurang_diskon, default:0
      t.timestamps
    end
  end
end
