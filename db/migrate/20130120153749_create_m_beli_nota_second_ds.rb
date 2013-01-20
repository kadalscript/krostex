class CreateMBeliNotaSecondDs < ActiveRecord::Migration
  def change
    create_table :m_beli_nota_second_ds do |t|
      t.integer :kode_tmp
      t.string :kode_barang
      t.decimal :qty
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
