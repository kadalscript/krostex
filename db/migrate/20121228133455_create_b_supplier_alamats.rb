class CreateBSupplierAlamats < ActiveRecord::Migration
  def change
    create_table :b_supplier_alamats do |t|
      t.string :kode_alamat, limit: 15
      t.string :kode, limit: 10
      t.string :kode_kategori
      t.string :alamat_title, limit: 90
      t.string :alamat_01, limit: 90
      t.string :alamat_02, limit: 90
      t.string :id_negara, limit: 5
      t.string :id_provinsi, limit: 5
      t.string :id_kota, limit: 5
      t.string :telepon, limit: 30
      t.string :fax, limit: 30
      t.string :kode_pos, limit: 5
      t.integer :status1, default_value: 0
      t.string :st_progress, limit: 20, default_value: 'ACTIVE'
      t.integer :b_supplier_id
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
