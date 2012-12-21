class DeviseCreateAdminMsUsers < ActiveRecord::Migration
  def change
    create_table(:admin_ms_users) do |t|
      ## Database authenticatable
      t.string :login_name, :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Details
      t.string :id_group
      t.string :user_name
      t.integer :status
      t.integer :limitlogin
      t.datetime :tglcreate
      t.datetime :tglpasswordexpired
      t.datetime :tgllastlogin
      t.string :pin
      t.integer :is_level1
      t.integer :is_level2
      t.integer :is_level3

      t.timestamps
    end
  end
end
