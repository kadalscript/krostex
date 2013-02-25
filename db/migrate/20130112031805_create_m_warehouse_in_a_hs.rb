class CreateMWarehouseInAHs < ActiveRecord::Migration
  def change
    create_table :m_warehouse_in_a_hs do |t|
      t.string   :kode_tmp, limit:20
      t.string   :kode_disp, limit:20
      t.string   :no_revisi, limit:2
      t.datetime :tanggal
      t.string   :id_cabang, limit:5
      t.string   :simbol, limit:5
      t.string   :jns_inv, limit:15
      t.string   :id_reff_disp, limit:30
      t.string   :keterangan, limit:99
      t.string   :nama_referensi, limit:50
      t.string   :id_surat_jalan, limit:30
      t.string   :id_po_disp, limit:30
      t.string   :id_supplier, limit:10
      t.string   :id_customer, limit:10
      t.string   :id_gudang_potong, limit:10
      t.integer  :is_nota, limit:2, default:0
      t.string   :id_nota_beli_disp, limit:20
      t.decimal  :total_qty_in, default:0
      t.string   :updated_by, limit:30
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :status1, limit:2, default:0
      t.string   :st_progress, limit:20
      t.boolean  :is_drafted
      t.integer  :is_hitung_qty, limit:2, default:0
      t.timestamps
    end
  end
end
