class CreateABanks < ActiveRecord::Migration
  def change
    create_table :a_banks do |t|
      t.string :kode, limit: 10
      t.string :nama, limit: 35
      t.string :simbol, limit:5
      t.integer :status1, limit:2
      t.string :st_progress, limit: 20
      t.string :updated_by, limit: 30
      t.timestamps
    end
  end
end
