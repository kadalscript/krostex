class CreateBBarangAs < ActiveRecord::Migration
  def change
    create_table :b_barang_as do |t|
      t.string :kode, limit: 20
      t.string :nama, limit: 50
      t.string :id_department, limit: 5
      t.string :id_golongan, limit: 5
      t.string :id_type, limit: 5
      t.string :id_level_four, limit: 5
      t.string :id_level_five, limit: 5
      t.string :id_satuan, limit: 5
      t.decimal :min_stok, default:0
      t.decimal :max_stok, default:0
      t.decimal :reorder_stok, default:0
      t.string  :updated_by, limit: 30
      t.string  :count_id, limit:5
      t.datetime :tgl_mulai_konsumsi
      t.decimal :total_qty_konsumsi, default:0
      t.integer :is_konsumsi, limit:1, default:0
      t.integer :is_outstd_po, limit:4, default:0
      t.integer :is_eta, limit:4, default:0
      t.decimal :qty_outstd_po, default:0
      t.decimal :eta_brg, default:0
      t.timestamps
    end
  end
end
