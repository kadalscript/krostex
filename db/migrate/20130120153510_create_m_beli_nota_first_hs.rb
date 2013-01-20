class CreateMBeliNotaFirstHs < ActiveRecord::Migration
  def change
    create_table :m_beli_nota_first_hs do |t|
      t.integer :kode_tmp
      t.string :kode_disp
      t.string :id_cabang
      t.string :simbol
      t.datetime :tanggal
      t.string :no_po_disp
      t.string :id_supplier
      t.string :id_valuta
      t.decimal :nilai_rate_kurs
      t.decimal :total_sub_total
      t.decimal :total_disc_persen
      t.decimal :total_disc_nominal
      t.decimal :total_sub_total_kurang_disc
      t.decimal :total_ppn_disc
      t.decimal :total_ppn_nominal
      t.decimal :total_grand_total
      t.decimal :total_grand_total_po
      t.decimal :total_dp
      t.decimal :total_grand_total_retur
      t.datetime :tgl_jth_tempo
      t.string :keterangan
      t.string :no_btb_list_disp
      t.string :updated_by
      t.integer :status1
      t.string :st_progress
      t.decimal :qty_all_nota
      t.integer :is_ap
      t.string :id_ap_disp

      t.timestamps
    end
  end
end
