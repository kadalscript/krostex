class CreateMBeliNotaAHs < ActiveRecord::Migration
  def change
    create_table :m_beli_nota_a_hs do |t|
      t.string :kode_tmp, limit: 20
      t.string :kode_disp, limit: 20
      t.string :id_cabang, limit: 2
      t.string :simbol, limit: 5
      t.string  :no_revisi, limit:2
      t.datetime :tanggal
      t.string :no_po_disp, limit: 20
      t.string :id_supplier, limit: 10
      t.string :id_valuta, limit: 2
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
      t.string :keterangan, limit:200
      t.string :updated_by, limit:30
      t.integer :status1, default: 0
      t.string :no_btb_list_disp, limit:20
      t.string :st_progress, limit:20
      t.decimal :qty_all_nota, default:0
      t.integer :is_ap, default:0
      t.string :id_ap_disp, limit:20
      t.boolean :is_drafted

      t.timestamps
    end
  end
end
