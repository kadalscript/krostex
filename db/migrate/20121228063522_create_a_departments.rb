class CreateADepartments < ActiveRecord::Migration
  def change
    create_table :a_departments do |t|
      t.string :kode, limit: 5
      t.string :nama, limit: 30
      t.string :simbol, limit: 5
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
