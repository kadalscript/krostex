class CreateAdminMsModulNavigasis < ActiveRecord::Migration
  def change
    create_table :admin_ms_modul_navigasis do |t|
      t.integer :id_navigasi, default:0
      t.integer :id_modul, default:0

      t.timestamps
    end
  end
end
