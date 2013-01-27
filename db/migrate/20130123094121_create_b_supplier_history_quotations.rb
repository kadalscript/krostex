class CreateBSupplierHistoryQuotations < ActiveRecord::Migration
  def change
    create_table :b_supplier_history_quotations do |t|
      t.string :kode, limit: 10
      t.string :kode_brg, limit: 10
      t.string :kode_brg_ext, limit:20
      t.integer :status1, limit: 2
      t.string :st_progress, limit: 20
      t.string :updated_by, limit: 30
      t.string :id_satuan_kemasan, limit: 10
      t.integer :pos_penawaran_x, limit: 2
      t.string :penawaran_kode_cur, limit: 20
      t.datetime :penawaran_tgl_cur
      t.string :penawaran_kode_valuta_cur, limit: 2
      t.decimal :penawaran_harga_cur
      t.decimal :penawaran_min_order_cur
      t.string :penawaran_kode_satuan_cur, limit: 5
      t.integer :penawaran_waktu_kirim_cur, limit: 3
      t.string :penawaran_kode_1, limit: 20
      t.datetime :penawaran_tgl_1
      t.string :penawaran_kode_valuta_1, limit: 2
      t.decimal :penawaran_harga_1
      t.decimal :penawaran_min_order_1
      t.string :penawaran_kode_satuan_1, limit: 5
      t.integer :penawaran_waktu_kirim_1, limit: 3
      t.string :penawaran_kode_2, limit: 20
      t.datetime :penawaran_tgl_2
      t.string :penawaran_kode_valuta_2, limit: 2
      t.decimal :penawaran_harga_2
      t.decimal :penawaran_min_order_2
      t.string :penawaran_kode_satuan_2, limit: 5
      t.integer :penawaran_waktu_kirim_2, limit: 3
      t.string :penawaran_kode_3, limit: 20
      t.datetime :penawaran_tgl_3
      t.string :penawaran_kode_valuta_3, limit: 2
      t.decimal :penawaran_harga_3
      t.decimal :penawaran_min_order_3
      t.string :penawaran_kode_satuan_3, limit: 5
      t.integer :penawaran_waktu_kirim_3, limit: 3
      t.string :penawaran_kode_4, limit: 20
      t.datetime :penawaran_tgl_4
      t.string :penawaran_kode_valuta_4, limit: 2
      t.decimal :penawaran_harga_4
      t.decimal :penawaran_min_order_4
      t.string :penawaran_kode_satuan_4, limit: 5
      t.integer :penawaran_waktu_kirim_4, limit: 3
      t.timestamps
    end
  end
end
