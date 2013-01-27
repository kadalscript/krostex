class AddColumnsNamaReferensiToMWarehouseInFirstHs < ActiveRecord::Migration
  def change
    add_column :m_warehouse_in_first_hs, :nama_referensi, :string
#    change_column :m_warehouse_in_first_hs, :jns_in, :string
  end
end
