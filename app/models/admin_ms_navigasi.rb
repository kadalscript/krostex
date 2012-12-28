class AdminMsNavigasi < ActiveRecord::Base
  attr_accessible :id_navigasi, :nama_button, :nama_navigasi, :status1, :created_at, :updated_at
  validates :id_navigasi, :nama_button, :nama_navigasi, :status1, presence: true
end
