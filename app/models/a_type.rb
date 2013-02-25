class AType < ActiveRecord::Base
	set_table_name :a_brg_c_types
	attr_accessible :id_department, :id_golongan, :kode, :nama, :simbol, :updated_by
end
