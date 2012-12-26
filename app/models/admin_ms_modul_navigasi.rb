class AdminMsModulNavigasi < ActiveRecord::Base
  attr_accessible :id_modul, :id_navigasi
  validates :id_modul, :id_navigasi, presence: true
end
