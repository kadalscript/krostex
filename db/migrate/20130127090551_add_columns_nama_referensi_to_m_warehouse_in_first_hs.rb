class AddColumnsNamaReferensiToMWarehouseInFirstHs < ActiveRecord::Migration
  def change
    add_column :m_warehouse_in_first_hs, :nama_referensi, :string, limit:70
    change_column :m_warehouse_in_first_hs, :jns_in, :string, limit: 15
  end
end
