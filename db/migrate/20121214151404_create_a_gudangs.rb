class CreateAGudangs < ActiveRecord::Migration
  def change
    create_table :a_gudangs do |t|
      t.string :simbol
      t.string :nama
      t.integer :status1
      t.string :st_progress
      t.string :update_by

      t.timestamps
    end
  end
end
