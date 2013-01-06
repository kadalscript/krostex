class CreateMBeliPoSecondDs < ActiveRecord::Migration
  def change
    create_table :m_beli_po_second_ds do |t|
      t.integer :kode_tmp
      t.string :kode_barang
      t.decimal :qty_kemasan
      t.string :id_satuan_kemasan
      t.decimal :qty
      t.decimal :qty_btb
      t.string :id_valuta
      t.decimal :harga
      t.decimal :diskon
      t.decimal :total_qty_kali_harga
      t.decimal :total_qty_kali_harga_kali_diskon
      t.decimal :total_kurang_diskon

      t.timestamps
    end
  end
end
