class CreateBSupplierCContacts < ActiveRecord::Migration
  def change
    create_table :b_supplier_c_contacts do |t|
      t.string :kode_contact, limit: 15
      t.string :kode, limit: 10
      t.string :kode_kategori, limit:  15
      t.string :nama, limit: 50
      t.string :nama_lengkap, limit: 90
      t.string :telepon, limit: 50
      t.string :handphone, limit: 50
      t.string :email, limit: 50
      t.datetime :tgl_lahir
      t.string :telepon, limit: 50
      t.integer :status1, limit: 2, default_value: 0
      t.string :st_progress, limit: 20, default_value: 'Active'
      t.string :updated_by, limit: 30
      t.timestamps
    end
  end
end
