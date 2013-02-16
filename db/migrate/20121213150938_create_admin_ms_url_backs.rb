class CreateAdminMsUrlBacks < ActiveRecord::Migration
  def change
    create_table :admin_ms_url_backs do |t|
      t.string :kode , limit:20
      t.string :url_back, limit:3000

      t.timestamps
    end
  end
end
