class CreateMBeliPoFirstHs < ActiveRecord::Migration
  def change
    create_table :m_beli_po_first_hs do |t|
      t.string :kode_tmp
      t.string :kode_disp
      t.string :id_cabang
      t.string :simbol
      t.datetime :tanggal
      t.string :no_penawaran
      t.string :id_supplier
      t.string :id_alamat_supplier
      t.string :id_valuta
      t.decimal :nilai_rate_kurs
      t.decimal :total_sub_total
      t.decimal :total_disc_persen
      t.decimal :total_disc_nominal
      t.decimal :total_sub_total_kurang_disc
      t.decimal :total_ppn_disc
      t.decimal :total_ppn_nominal
      t.decimal :total_grand_total
      t.datetime :tgl_kirim
      t.datetime :tgl_jth_tempo
      t.string :keterangan
      t.string :keterangan_syarat_bayar
      t.string :updated_by
      t.integer :status1
      t.string :st_progress
      t.decimal :qty_all_po
      t.decimal :qty_all_btb
      t.decimal :qty_all_close
      t.decimal :total_nota
      t.decimal :total_retur
      t.integer :is_close_btb
      t.integer :is_close_po

      t.timestamps
    end
  end
end
