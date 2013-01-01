class ANegara < ActiveRecord::Base
  attr_accessible :kode, :nama, :simbol, :updated_by
  validates :kode, :simbol, presence: true, length: { maximum: 5, message: TOO_LONG_CHARACTER }
  validates :nama, :updated_by, presence: true, length: { maximum: 30, message: TOO_LONG_CHARACTER }
  before_create :check_updater
  before_save :check_updater

  def check_updater
    self.updated_by = self.updated_by.blank? ? "ANONYMOUS" : self.updated_by
  end
end
