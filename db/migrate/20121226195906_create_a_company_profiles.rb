class CreateACompanyProfiles < ActiveRecord::Migration
  def change
    create_table :a_company_profiles do |t|
      t.string :kode, limit: 1
      t.string :nama_company, limit: 50
      t.string :contact_person, limit: 50
      t.string :alamat_title, limit: 90
      t.string :alamat_01, limit: 90
      t.string :alamat_02, limit: 90
      t.string :alamat_03, limit: 90
      t.string :telepon, limit: 30
      t.string :fax, limit: 30
      t.string :email, limit: 30
      t.string :homepage, limit: 30

      t.timestamps
    end
  end
end
