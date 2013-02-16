class CreateAdminMsMenuGroups < ActiveRecord::Migration
  def change
    create_table :admin_ms_menu_groups do |t|
      t.string :id_menu, limit: 5
      t.string :id_group, limit: 5
      t.integer :statusmenu, limit: 2, default:0

      t.timestamps
    end
  end
end
