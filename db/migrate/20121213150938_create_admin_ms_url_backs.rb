class CreateAdminMsUrlBacks < ActiveRecord::Migration
  def change
    create_table :admin_ms_url_backs do |t|
      t.string :kode
      t.string :url_back

      t.timestamps
    end
  end
end
