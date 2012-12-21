class CreateAdminMsMenuGenerates < ActiveRecord::Migration
  def change
    create_table :admin_ms_menu_generates do |t|
      t.string :ip_address
      t.string :string
      t.string :no_urut
      t.string :string
      t.string :id_menu
      t.string :string
      t.string :simbol
      t.string :string
      t.string :keterangan
      t.string :string
      t.string :nm_url
      t.string :string
      t.string :status
      t.string :integer
      t.string :id_menuref
      t.string :string
      t.string :tipemenu
      t.string :integer

      t.timestamps
    end
  end
end
