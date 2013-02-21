class CreateABadanUsahas < ActiveRecord::Migration
  def change
    create_table :a_badan_usahas do |t|
      t.string :kode, limit: 5
      t.string :nama, limit: 15
      t.integer :no_urut, default_value: 0, limit:4
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
