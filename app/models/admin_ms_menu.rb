class AdminMsMenu < ActiveRecord::Base
  attr_accessible :id_menu, :id_menu_parent, :status1, :levelmenu, :id_modul,
    :addparam, :namamenu, :nourut, :created_at, :updated_at

  has_many :admin_ms_menu_generates, primary_key: "id_menu", dependent: :destroy
end
