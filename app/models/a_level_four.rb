class ALevelFour < ActiveRecord::Base
	set_table_name :a_brg_d_level_fours
	attr_accessible :id_department, :id_golongan, :id_type, :kode, :nama, :simbol, :updated_by
end
