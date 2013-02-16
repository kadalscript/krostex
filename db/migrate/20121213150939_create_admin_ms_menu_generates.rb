class CreateAdminMsMenuGenerates < ActiveRecord::Migration
  def change
    create_table :admin_ms_menu_generates do |t|
      t.string :ip_address, limit:15
      t.string :no_urut, limit:4
      t.string :id_menu, limit:5
      t.string :simbol, limit:5
      t.string :keterangan, limit:50
      t.string :nm_url, limit:100
      t.integer :status, limit:2, default:0
      t.string :id_menuref, limit:15
      t.integer :tipemenu, limit:2, default:0

      t.timestamps
    end
  end
end
