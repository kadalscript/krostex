class CreateAdminMsMenuGroupNavs < ActiveRecord::Migration
  def change
    create_table :admin_ms_menu_group_navs do |t|
      t.string :id_menu , limit: 5
      t.string :id_group, limit: 5
      t.integer :id_navigasi, limit:2, default:0

      t.timestamps
    end
  end
end
