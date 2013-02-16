class CreateASettingPrograms < ActiveRecord::Migration
  def change
    create_table :a_setting_programs do |t|
      t.string :id_company, limit:10
      t.string :id_gudang, limit:10
      t.integer :is_trigger, limit:2
      t.string :id_gudang_reject, limit: 10
      t.string :kat_alamat_ktr_supplier, limit: 20
      t.timestamps
    end
  end
end
