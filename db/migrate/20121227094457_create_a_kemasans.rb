class CreateAKemasans < ActiveRecord::Migration
  def change
    create_table :a_kemasans do |t|
      t.string :kode, limit: 10
      t.string :nama, limit: 15
      t.decimal :isi_volume, default_value: 0
      t.string :id_satuan, limit:5
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
