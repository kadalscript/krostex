class CreateMWarehouseInFirstHs < ActiveRecord::Migration
  def change
    create_table :m_warehouse_in_first_hs do |t|
      t.string :kode_tmp
      t.string :kode_disp
      t.datetime :tanggal
      t.string :id_cabang
      t.string :simbol
      t.integer :jns_inv
      t.string :id_reff_disp
      t.string :keterangan
      t.string :id_surat_jalan
      t.string :id_po_disp
      t.string :id_supplier
      t.string :id_customer
      t.string :id_gudang_potong
      t.integer :is_nota
      t.string :id_nota_beli_disp
      t.decimal :total_qty_in
      t.string :updated_by
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :status1
      t.string :st_progress

      t.timestamps
    end
  end
end
