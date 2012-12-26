class CreateAdminMsMenus < ActiveRecord::Migration
  def change
    create_table :admin_ms_menus do |t|
      t.string :id_menu, limit: 4
      t.string :id_menu_parent, limit: 4
      t.integer :status1, limit: 4
      t.integer :levelmenu, limit: 4
      t.integer :id_modul, limit: 2
      t.string :addparam, limit: 99
      t.string :namamenu, limit: 99
      t.integer :nourut, limit: 4

      t.timestamps
    end
  end
end
