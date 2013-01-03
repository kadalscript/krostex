class ATemplateCat < ActiveRecord::Base
  attr_accessible :kategori, :kode, :nama, :simbol, :st_progress, :status1, :updated_by
  validates :kategori, :simbol, :st_progress, presence: true, length: { maximum: 20, message: TOO_LONG_CHARACTER }
  validates :nama, presence: true, length: { maximum: 30, message: TOO_LONG_CHARACTER }
  validates :updated_by, length: { maximum: 30, message: TOO_LONG_CHARACTER }
  before_create :updating_status1
  before_save :updating_status1

  def updating_status1
    self.status1 = st_progress == 'ACTIVE' ? 0 : 99
  end
end
