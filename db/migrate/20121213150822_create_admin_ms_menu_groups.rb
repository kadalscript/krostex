class CreateAdminMsMenuGroups < ActiveRecord::Migration
  def change
    create_table :admin_ms_menu_groups do |t|
      t.string :id_menu, limit: 4
      t.string :id_group, limit: 2
      t.integer :statusmenu, limit: 2

      t.timestamps
    end
  end
end
