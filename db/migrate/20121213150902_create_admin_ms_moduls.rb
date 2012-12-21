class CreateAdminMsModuls < ActiveRecord::Migration
  def change
    create_table :admin_ms_moduls do |t|
      t.integer :id_modul
      t.string :keterangan
      t.string :modulname
      t.string :appname
      t.integer :status1
      t.string :buttongroup
      t.string :nm_url
      t.string :nm_url1
      t.string :nm_url2
      t.string :kduser
      t.integer :tipemodul

      t.timestamps
    end
  end
end
