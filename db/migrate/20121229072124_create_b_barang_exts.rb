class CreateBBarangExts < ActiveRecord::Migration
  def change
    create_table :b_barang_exts do |t|
      t.string :kode,     limit: 20
      t.string :kode_ext, limit: 20
      t.string :kode_alias, limit:30
      t.string :nama_ext, limit:90
      t.string :id_supplier, limit: 10
      t.string :id_size, limit: 10
      t.string :id_warna, limit: 10
      t.string :id_satuan_kemasan, limit: 5
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
