class CreateBSupplierAccounts < ActiveRecord::Migration
  def change
    create_table :b_supplier_accounts do |t|
      t.string :kode_account, limit: 20
      t.string :kode, limit: 10
      t.string :kode_bank, limit: 5
      t.string :nama_pemilik, limit: 50
      t.string :nama_cabang, limit:35
      t.integer :status1, limit:2
      t.string :st_progress, limit:20
      t.string :updated_by, limit:30
      t.timestamps
    end
  end
end
