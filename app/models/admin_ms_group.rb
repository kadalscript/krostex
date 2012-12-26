class AdminMsGroup < ActiveRecord::Base
  attr_accessible :id_group, :id_group_parent, :namagroup, :statusgroup
  validates :id_group, :id_group_parent, :namagroup, :statusgroup, presence: true
end
