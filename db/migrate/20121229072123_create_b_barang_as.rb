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
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
