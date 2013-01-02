class AdminMsGroup < ActiveRecord::Base
  attr_accessible :id_group, :id_group_parent, :namagroup, :statusgroup, :created_at, :updated_at
  validates :id_group, :id_group_parent, :namagroup, presence: true
end
