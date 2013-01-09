class ABadanUsaha < ActiveRecord::Base
  attr_accessible :kode, :nama, :no_urut, :updated_by
  validates :kode, presence: true, length: { maximum: 5, message: " terlalu panjang, maksimal %{count} karakter" }
  validates :nama, presence: true, length: { maximum: 15, message: " terlalu panjang, maksimal %{count} karakter" }
  validates :updated_by, length: { maximum: 30, message: " terlalu panjang, maksimal %{count} karakter" }
  validates :no_urut, numericality: { message: " harus berupa angka" }
  before_save :check_updater
  before_create :check_updater

  has_many :b_suppliers, class_name: "BSupplier", foreign_key: "id_badan_usaha" 

  def check_updater
    self.updated_by = self.updated_by.blank? ? "ANONYMOUS" : self.updated_by
  end
  
end
