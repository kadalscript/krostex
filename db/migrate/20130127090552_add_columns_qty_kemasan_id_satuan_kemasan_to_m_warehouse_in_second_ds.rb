class AddColumnsQtyKemasanIdSatuanKemasanToMWarehouseInSecondDs < ActiveRecord::Migration
  def change
    add_column :m_warehouse_in_second_ds, :qty_kemasan      , :decimal, limit:70
    add_column :m_warehouse_in_second_ds, :id_satuan_kemasan, :string , limit:5
  end
end
