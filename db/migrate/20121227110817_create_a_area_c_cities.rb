class CreateAAreaCCities < ActiveRecord::Migration
  def change
    create_table :a_area_c_cities do |t|
      t.string :kode, limit: 10
      t.string :nama, limit: 30
      t.string :simbol, limit: 5
      t.string :id_negara, limit: 5
      t.string :id_provinsi, limit: 10
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
