class ACity < ActiveRecord::Base
  attr_accessible :id_negara, :id_provinsi, :kode, :nama, :simbol, :updated_by, :created_at, :updated_at
  validates :kode, :simbol, presence: true, length: { maximum: 5, message: TOO_LONG_CHARACTER }
  validates :nama, presence: true, length: { maximum: 30, message: TOO_LONG_CHARACTER }
  validates :updated_by, length: { maximum: 30, message: TOO_LONG_CHARACTER }
  belongs_to :a_provinsi, class_name: "AProvinsi", foreign_key: 'id_provinsi'
  belongs_to :a_negara, class_name: "ANegara", foreign_key: 'id_negara'
  has_many :supplier_alamat, class_name: 'BSupplierAlamat', foreign_key: 'id_kota'
  before_create :check_updater
  before_save :check_updater

  def check_updater
    self.updated_by = self.updated_by.blank? ? "ANONYMOUS" : self.updated_by
  end
end