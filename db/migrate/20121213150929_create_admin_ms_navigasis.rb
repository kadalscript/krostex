class CreateAdminMsNavigasis < ActiveRecord::Migration
  def change
    create_table :admin_ms_navigasis do |t|
      t.integer :id_navigasi, default:0
      t.string :nama_navigasi, limit:30
      t.string :nama_button, limit:30
      t.integer :status1, default:0, limit:2

      t.timestamps
    end
  end
end
