class CreateAdminMsNavigasis < ActiveRecord::Migration
  def change
    create_table :admin_ms_navigasis do |t|
      t.integer :id_navigasi
      t.string :nama_navigasi
      t.string :nama_button
      t.integer :status1

      t.timestamps
    end
  end
end
