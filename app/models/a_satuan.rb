class ASatuan < ActiveRecord::Base
  attr_accessible :nama, :no_urut, :simbol, :updated_by
  validates :no_urut, presence: true, numericality: { message: " harus berupa angka" }
  validates :simbol, uniqueness: { message: " harus unik" }, presence: true, length: { maximum: 5, message: " terlalu panjang, maksimal %{count} karakter" }
  validates :nama, presence: true, length: { maximum: 15, message: " terlalu panjang, maksimal %{count} karakter" }
  validates :updated_by, length: { maximum: 30, message: " terlalu panjang, maksimal %{count} karakter" }
  before_create :check_updater
  before_save :check_updater
  has_many :a_kemasans, class_name: "AKemasan", foreign_key: "id_satuan"
  before_destroy :check_childs

  def check_updater
    self.updated_by = self.updated_by.blank? ? "ANONYMOUS" : self.updated_by
  end

  def check_childs
    if self.a_kemasans.count > 0
      return false
    end
  end
end