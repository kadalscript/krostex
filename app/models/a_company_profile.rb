class ACompanyProfile < ActiveRecord::Base
  attr_accessible :alamat_01, :alamat_02, :alamat_03, :alamat_title, :contact_person, :email, :fax, :homepage, :kode, :nama_company, :telepon
  validates :kode, presence: true, uniqueness: { message: " harus unik" }, length: { maximum: 1, message: " terlalu panjang, maksimal 1 karakter" }
  validates :nama_company, :contact_person, presence: true, length: { maximum: 50, message: " terlalu panjang, maksimal 50 karakter" }
  validates :alamat_title, :alamat_01, :alamat_02, :alamat_03, presence: true, length: { maximum: 90, message: " terlalu panjang, maksimal 90 karakter" }
  validates :telepon, :fax, :email, :homepage, presence: true, length: { maximum: 30, message: " terlalu panjang, maksimal 30 karakter" }
  validates :telepon, :fax, numericality: { message: " harus berupa angka" }
  validates :email, email_format: { message: " harus berformat nama@email.com" }
  before_create :get_last_kode

  def get_last_kode
    last_a_company_profile = ACompanyProfile.last
    self.kode = last_a_company_profile.blank? ? 1 : (last_a_company_profile.kode.to_i + 1)
  end
end
