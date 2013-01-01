class AProvinsi < ActiveRecord::Base
  attr_accessible :id_negara, :kode, :nama, :simbol, :updated_by
  belongs_to :a_negara, class_name: "ANegara", foreign_key: "id_negara"
end
