class CreateASatuans < ActiveRecord::Migration
  def change
    create_table :a_satuans do |t|
      t.string :simbol, limit: 5
      t.string :nama, limit: 15
      t.integer :no_urut, default_value: 0
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
