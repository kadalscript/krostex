class CreateMBeliNotaSecondDs < ActiveRecord::Migration
  def change
    create_table :m_beli_nota_second_ds do |t|
      t.string :kode_tmp, limit: 20
      t.string :kode_brg, limit: 20
      t.decimal :qty, decimal
      t.string :id_valuta, limit:2
      t.decimal :harga
      t.decimal :diskon
      t.decimal :total_qty_kali_harga
      t.decimal :total_qty_kali_harga_kali_diskon
      t.decimal :total_kurang_diskon

      t.timestamps
    end
  end
end
