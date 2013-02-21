class CreateBSupplierAs < ActiveRecord::Migration
  def change
    create_table :b_supplier_as do |t|
      t.string :kode, limit: 10
      t.string :nama, limit: 50
      t.string :id_badan_usaha, limit: 2
      t.string :email, limit: 50
      t.string :homepage , limit:90
      t.integer :status1, limit:2, default: 0
      t.string :st_progress, limit: 20, default_value: 'ACTIVE'
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
