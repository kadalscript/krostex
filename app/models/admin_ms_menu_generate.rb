class AdminMsMenuGenerate < ActiveRecord::Base
  attr_accessible :id_menu, :id_menuref, :integer, :integer, :ip_address, :keterangan, :nm_url, :no_urut, :simbol, :status, :string, :string, :string, :string, :string, :string, :string, :tipemenu
  validates :id_menu, :id_menuref, :integer, :integer, :ip_address, :keterangan, :nm_url, :no_urut, :simbol, :status, :string, :string, :string, :string, :string, :string, :string, :tipemenu, presence: true
end
