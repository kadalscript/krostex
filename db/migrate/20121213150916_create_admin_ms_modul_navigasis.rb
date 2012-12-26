class CreateAdminMsModulNavigasis < ActiveRecord::Migration
  def change
    create_table :admin_ms_modul_navigasis do |t|
      t.integer :id_navigasi
      t.integer :id_modul

      t.timestamps
    end
  end
end
