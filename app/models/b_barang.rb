class BBarang < ActiveRecord::Base
  attr_accessible :id_department, :id_golongan, :id_level_five, :id_level_four, :id_satuan, :id_type, :kode, :max_stok, :min_stok, :nama, :reorder_stok, :updated_by
end
