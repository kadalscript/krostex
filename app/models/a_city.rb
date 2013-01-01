class ACity < ActiveRecord::Base
  attr_accessible :id_negara, :id_provinsi, :kode, :nama, :simbol, :updated_by
  validates :kode, :simbol, presence: true, length: { maximum: 5, message: TOO_LONG_CHARACTER }
  validates :nama, presence: true, length: { maximum: 30, message: TOO_LONG_CHARACTER }
  validates :updated_by, length: { maximum: 30, message: TOO_LONG_CHARACTER }
end
