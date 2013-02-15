class CreateMWarehouseOutBDs < ActiveRecord::Migration
  def change
    create_table :m_warehouse_out_b_ds do |t|
      t.string :kode_tmp
      t.string :kode_brg
      t.string :kode_brg_ext
      t.string :kode_brg_lot
      t.decimal :qty
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
