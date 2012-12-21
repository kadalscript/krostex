class AdminMsMenuGroup < ActiveRecord::Base
  attr_accessible :id_group, :id_menu, :id_product, :statusmenu
  validates :id_group, :id_menu, :id_product, :statusmenu, presence: true
end
