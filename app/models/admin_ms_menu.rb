class AdminMsMenu < ActiveRecord::Base
  attr_accessible :addparam, :id_menu, :id_menuref, :id_modul, :is_show_aplikasi, :is_show_buku, :is_show_laporan, :levelmenu, :namamenu, :nolist, :nourut, :status1, :statusaplikasi
  validates :addparam, :id_menu, :id_menuref, :id_modul, :is_show_aplikasi, :is_show_buku, :is_show_laporan, :levelmenu, :namamenu, :nolist, :nourut, :status1, :statusaplikasi, presence: true
end
