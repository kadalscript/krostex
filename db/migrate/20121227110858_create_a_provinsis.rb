class CreateAProvinsis < ActiveRecord::Migration
  def change
    create_table :a_provinsis do |t|
      t.string :kode, limit: 5
      t.string :nama, limit: 15
      t.string :simbol
      t.string :id_negara
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end