class ADepartment < ActiveRecord::Base
	set_table_name :a_brg_a_departments
	attr_accessible :kode, :nama, :simbol, :updated_by
end
