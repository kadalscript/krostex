class AdminMsModul < ActiveRecord::Base
  attr_accessible :id_modul, :keterangan, :nm_url, :status1, :created_at, :updated_at
  validates :id_modul, :keterangan, :status1, presence: true
end
