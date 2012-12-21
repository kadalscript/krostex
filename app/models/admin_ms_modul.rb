class AdminMsModul < ActiveRecord::Base
  attr_accessible :appname, :buttongroup, :id_modul, :kduser, :keterangan, :modulname, :nm_url, :nm_url1, :nm_url2, :status1, :tipemodul
  validates :appname, :buttongroup, :id_modul, :kduser, :keterangan, :modulname, :nm_url, :nm_url1, :nm_url2, :status1, :tipemodul, presence: true
end
