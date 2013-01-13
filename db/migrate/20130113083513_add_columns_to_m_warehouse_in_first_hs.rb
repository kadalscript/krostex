class AddColumnsToMWarehouseInFirstHs < ActiveRecord::Migration
  def change
    add_column :m_warehouse_in_first_hs, :is_drafted, :boolean
  end
end
