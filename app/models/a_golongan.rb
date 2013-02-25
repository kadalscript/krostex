class AGolongan < ActiveRecord::Base
	set_table_name :a_brg_b_golongans
	attr_accessible :id_department, :kode, :nama, :simbol, :updated_by
end
