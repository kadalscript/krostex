class CreateAdminMsMenuGroupNavs < ActiveRecord::Migration
  def change
    create_table :admin_ms_menu_group_navs do |t|
      t.string :id_menu
      t.string :id_group
      t.integer :id_navigasi

      t.timestamps
    end
  end
end
