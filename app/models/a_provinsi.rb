class AProvinsi < ActiveRecord::Base
  attr_accessible :id_negara, :kode, :nama, :simbol, :updated_by
  belongs_to :a_negara, class_name: "ANegara", foreign_key: "id_negara"
  validates :kode, presence: true, length: { maximum: 5, message: TOO_LONG_CHARACTER }
  validates :nama, presence: true, length: { maximum: 15, message: TOO_LONG_CHARACTER }
  validates :updated_by, length: { maximum: 30, message: TOO_LONG_CHARACTER }
  before_create :check_updater
  before_save :check_updater

  def check_updater
    self.updated_by = self.updated_by.blank? ? "ANONYMOUS" : self.updated_by
  end
end
