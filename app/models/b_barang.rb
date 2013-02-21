class BBarang < ActiveRecord::Base
	set_table_name :b_barang_as
	attr_accessible :id_department, :id_golongan, :id_level_five, :id_level_four, :id_satuan, :id_type, :kode, :max_stok, :min_stok, :nama, :reorder_stok, :updated_by
	has_many :supplier_history_quotation, class_name: 'BSupplierHistoryQuotation', foreign_key: 'kode_brg'
end
