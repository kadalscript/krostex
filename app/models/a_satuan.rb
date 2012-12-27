class ASatuan < ActiveRecord::Base
  attr_accessible :nama, :no_urut, :simbol, :updated_by

  validates :nama, :no_urut, :simbol, :updated_by, presence: true
  validates :simbol, uniqueness: true
end
