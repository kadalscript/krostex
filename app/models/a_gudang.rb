class AGudang < ActiveRecord::Base
  attr_accessible :nama, :simbol, :st_progress, :status1, :update_by
  validates :nama, :simbol, :st_progress, :update_by, presence: true

  before_save :check_status

  def check_status
    self.status1 = self.st_progress.eql?('Active') ? 0 : 99 
  end
end
