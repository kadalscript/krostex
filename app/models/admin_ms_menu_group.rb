class AdminMsMenuGroup < ActiveRecord::Base
  attr_accessible :id_menu, :id_group, :id_product, :statusmenu, :created_at, :updated_at
  validates :id_group, :id_menu, :statusmenu, presence: true
end
