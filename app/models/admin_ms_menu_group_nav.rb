class AdminMsMenuGroupNav < ActiveRecord::Base
  attr_accessible  :id_menu, :id_group, :id_navigasi, :created_at, :updated_at
  validates :id_group, :id_menu, :id_navigasi, presence: true
end
