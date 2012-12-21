class AdminMsMenuGroupNav < ActiveRecord::Base
  attr_accessible :id_group, :id_menu, :id_navigasi
  validates :id_group, :id_menu, :id_navigasi, presence: true
end
