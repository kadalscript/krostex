class ANegara < ActiveRecord::Base
  attr_accessible :kode, :nama, :simbol, :updated_by
  before_create :check_updater
  before_save :check_updater

  def check_updater
    self.updated_by = self.updated_by.blank? ? "ANONYMOUS" : self.updated_by
  end
end
