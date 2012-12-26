class CreateAdminMsGroups < ActiveRecord::Migration
  def change
    create_table :admin_ms_groups do |t|
      t.string :id_group, limit: 5
      t.string :namagroup, limit: 20
      t.integer :statusgroup, limit: 4
      t.string :id_group_parent, limit: 5

      t.timestamps
    end
  end
end
