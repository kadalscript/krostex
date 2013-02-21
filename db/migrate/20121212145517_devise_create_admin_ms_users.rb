class DeviseCreateAdminMsUsers < ActiveRecord::Migration
  def change
    create_table(:admin_ms_users) do |t|
      ## Database authenticatable
      t.string :login_name, :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Details
      t.string :id_group, limit:5
      t.string :user_name, limit:30
      t.integer :status, limit:3, default:0
      t.integer :limitlogin, limit:3, default:0
      t.datetime :tglcreate
      t.datetime :tglpasswordexpired
      t.datetime :tgllastlogin
      t.string :pin, limit:10
      t.integer :is_level1, default:0
      t.integer :is_level2, default:0
      t.integer :is_level3, default:0

      t.timestamps
    end
  end
end
