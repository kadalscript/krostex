class CreateBBarangs < ActiveRecord::Migration
  def change
    create_table :b_barangs do |t|
      t.string :kode, limit: 5
      t.string :nama, limit: 30
      t.string :id_department, limit: 5
      t.string :id_golongan, limit: 5
      t.string :id_type, limit: 5
      t.string :id_level_four, limit: 5
      t.string :id_level_five, limit: 5
      t.string :id_satuan, limit: 5
      t.decimal :min_stok
      t.decimal :max_stok
      t.decimal :reorder_stok
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
