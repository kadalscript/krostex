class CreateBSuppliers < ActiveRecord::Migration
  def change
    create_table :b_suppliers do |t|
      t.string :kode, limit: 10
      t.string :nama, limit: 50
      t.string :id_badan_usaha, limit: 2
      t.string :email, limit: 50
      t.string :homepage
      t.integer :status1, default_value: 0
      t.string :st_progress, limit: 20, default_value: 'ACTIVE'
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
