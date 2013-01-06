class AKemasan < ActiveRecord::Base
  attr_accessible :id_satuan, :isi_volume, :kode, :nama, :updated_by
  validates :kode, presence: true, length: { maximum: 5, message: " terlalu panjang, maksimal %{count} karakter" }
  validates :nama, presence: true, length: { maximum: 15, message: " terlalu panjang, maksimal %{count} karakter" }
  validates :id_satuan, presence: true
  validates :updated_by, length: { maximum: 30, message: " terlalu panjang, maksimal %{count} karakter" }
  validates :isi_volume, presence: true, numericality: { message: " harus berupa angka" }
  before_create :check_updater
  before_save :check_updater
  belongs_to :a_satuan, class_name: "ASatuan", foreign_key: "id_satuan"
  has_many :m_beli_po_second_ds, class_name: 'MBeliPoSecondD', foreign_key: 'id_satuan_kemasan'

  def check_updater
    self.updated_by = self.updated_by.blank? ? "ANONYMOUS" : self.updated_by
  end
end
