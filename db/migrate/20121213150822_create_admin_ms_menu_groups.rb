class CreateAdminMsMenuGroups < ActiveRecord::Migration
  def change
    create_table :admin_ms_menu_groups do |t|
      t.string :id_menu
      t.string :id_group
      t.string :id_product
      t.integer :statusmenu

      t.timestamps
    end
  end
end
