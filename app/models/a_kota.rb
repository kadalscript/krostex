class AKota < ActiveRecord::Base
  self.table_name = "a_kotas"
  attr_accessible :id_negara, :id_provinsi, :kode, :nama, :simbol, :updated_by
end
