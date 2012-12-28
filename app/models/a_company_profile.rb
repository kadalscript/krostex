class ACompanyProfile < ActiveRecord::Base
  attr_accessible :alamat_01, :alamat_02, :alamat_03, :alamat_title, :contact_person,
                  :email, :fax, :homepage, :kode, :nama_company, :telepon
  # Validating all column must be filled in
  validates :alamat_01, :alamat_02, :alamat_03, :alamat_title, :contact_person,
            :email, :fax, :homepage, :kode, :nama_company, :telepon, presence: true
  # Validating kode column to be uniq
  validates :kode, uniqueness: true
end
