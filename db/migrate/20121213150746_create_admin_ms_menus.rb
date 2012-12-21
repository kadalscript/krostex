class CreateAdminMsMenus < ActiveRecord::Migration
  def change
    create_table :admin_ms_menus do |t|
      t.string :id_menu
      t.string :id_menuref
      t.integer :status1
      t.integer :nolist
      t.integer :levelmenu
      t.integer :id_modul
      t.string :addparam
      t.string :namamenu
      t.integer :statusaplikasi
      t.integer :nourut
      t.integer :is_show_aplikasi
      t.integer :is_show_buku
      t.integer :is_show_laporan

      t.timestamps
    end
  end
end
