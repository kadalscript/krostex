class AdminMsModulNavigasi < ActiveRecord::Base
  attr_accessible :id_modul, :id_navigasi, :is_level1, :is_level2, :is_level3
  validates :id_modul, :id_navigasi, :is_level1, :is_level2, :is_level3, presence: true
end
