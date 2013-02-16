class CreateAGudangs < ActiveRecord::Migration
  def change
    create_table :a_gudangs do |t|
      t.string :simbol, limit:5
      t.string :nama, limit:30
      t.integer :status1, limit:2, default:0
      t.string :st_progress, limit:20
      t.string :update_by, limit:30
      t.string :alamat_title, limit: 99
      t.string :alamat_01, limit: 99
      t.string :alamat_02, limit: 99
      t.string :alamat_03, limit: 99

      t.timestamps
    end
  end
end
