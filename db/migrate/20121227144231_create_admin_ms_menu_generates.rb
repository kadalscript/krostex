class CreateAdminMsMenuGenerates < ActiveRecord::Migration
  def change
    create_table :admin_ms_menu_generates do |t|
      t.string :ip_address
      t.string :no_urut
      t.string :id_menu
      t.string :simbol
      t.string :keterangan
      t.string :nm_url
      t.integer :status
      t.string :id_menuref
      t.integer :tipemenu

      t.timestamps
    end
  end
end
