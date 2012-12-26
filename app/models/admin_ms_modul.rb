class AdminMsModul < ActiveRecord::Base
  attr_accessible :id_modul, :keterangan, :nm_url, :status1
  validates :id_modul, :keterangan, :nm_url, :status1, presence: true
end
