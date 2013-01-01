class CreateACities < ActiveRecord::Migration
  def change
    create_table :a_cities do |t|
      t.string :kode, limit: 5
      t.string :nama, limit: 30
      t.string :simbol, limit: 5
      t.integer :id_negara, limit: 5
      t.integer :id_provinsi, limit: 5
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
