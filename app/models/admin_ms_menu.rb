class AdminMsMenu < ActiveRecord::Base
  attr_accessible :id_menu, :id_menu_parent, :status1, :levelmenu, :id_modul,
    :addparam, :namamenu, :nourut, :created_at, :updated_at
end
