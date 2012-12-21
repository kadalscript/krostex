class AdminMsGroup < ActiveRecord::Base
  attr_accessible :id_group, :id_group_parent, :id_product, :kduser, :namagroup, :statusgroup, :viewadmin
  validates :id_group, :id_group_parent, :id_product, :kduser, :namagroup, :statusgroup, :viewadmin, presence: true
end
