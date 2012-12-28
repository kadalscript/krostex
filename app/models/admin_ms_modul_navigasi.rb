class AdminMsModulNavigasi < ActiveRecord::Base
  attr_accessible :id_modul, :id_navigasi, :created_at, :updated_at
  validates :id_modul, :id_navigasi, presence: true
end
