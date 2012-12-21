class CreateAdminMsModulNavigasis < ActiveRecord::Migration
  def change
    create_table :admin_ms_modul_navigasis do |t|
      t.integer :id_navigasi
      t.integer :id_modul
      t.integer :is_level1
      t.integer :is_level2
      t.integer :is_level3

      t.timestamps
    end
  end
end
