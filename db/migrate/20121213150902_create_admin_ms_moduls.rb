class CreateAdminMsModuls < ActiveRecord::Migration
  def change
    create_table :admin_ms_moduls do |t|
      t.integer :id_modul, limit: 5
      t.string :keterangan, limit: 50
      t.integer :status1, limit: 2, default:0
      t.string :nm_url, limit: 99

      t.timestamps
    end
  end
end
