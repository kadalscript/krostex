class ACompanyProfile < ActiveRecord::Base
  attr_accessible :alamat_01, :alamat_02, :alamat_03, :alamat_title, :contact_person, :email, :fax, :homepage, :kode, :nama_company, :telepon
  validates :alamat_01, :alamat_02, :alamat_03, :alamat_title, :contact_person, :email, :fax, :kode, :nama_company, :telepon, presence: true  
  validates :kode, uniqueness: { message: " harus unik" }, length: { maximum: 1, message: " terlalu panjang, maksimal 1 karakter" }
  validates :nama_company, :contact_person, length: { maximum: 50, message: " terlalu panjang, maksimal 50 karakter" }
  validates :alamat_title, :alamat_01, :alamat_02, :alamat_03, length: { maximum: 90, message: " terlalu panjang, maksimal 90 karakter" }
  validates :telepon, :fax, :email, :homepage, length: { maximum: 30, message: " terlalu panjang, maksimal 30 karakter" }
  validates :telepon, :fax, numericality: { message: " harus nomor" }
  validates :email, email_format: { message: " harus berformat nama@email.com" }
end
