class AddColumnSatuanIdAndHargaToMWarehouseInSecondDs < ActiveRecord::Migration
  def change
    add_column :m_warehouse_in_second_ds, :satuan_id, :integer
    add_column :m_warehouse_in_second_ds, :harga, :integer
  end
end
