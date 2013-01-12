class CreateMWarehouseInSecondDs < ActiveRecord::Migration
  def change
    create_table :m_warehouse_in_second_ds do |t|
      t.string :kode_tmp
      t.string :kode_brg
      t.string :kode_brg_ext
      t.string :kode_brg_lot
      t.decimal :qty

      t.timestamps
    end
  end
end
