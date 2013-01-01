class ANegara < ActiveRecord::Base
  attr_accessible :kode, :nama, :simbol, :updated_by
  validates :kode, :simbol, presence: true, length: { maximum: 5, message: TOO_LONG_CHARACTER }
  validates :nama, presence: true, length: { maximum: 30, message: TOO_LONG_CHARACTER }
  validates :updated_by, length: { maximum: 30, message: TOO_LONG_CHARACTER }
  before_create :check_updater
  before_save :check_updater
  has_many :a_provinsis, class_name: "AProvinsi", foreign_key: "id_negara"

  def check_updater
    self.updated_by = self.updated_by.blank? ? "ANONYMOUS" : self.updated_by
  end
end
