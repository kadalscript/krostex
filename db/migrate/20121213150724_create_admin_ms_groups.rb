class CreateAdminMsGroups < ActiveRecord::Migration
  def change
    create_table :admin_ms_groups do |t|
      t.string :id_group
      t.string :id_product
      t.string :namagroup
      t.integer :statusgroup
      t.string :id_group_parent
      t.integer :viewadmin
      t.string :kduser

      t.timestamps
    end
  end
end
