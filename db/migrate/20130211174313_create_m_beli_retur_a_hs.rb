class CreateMBeliReturAHs < ActiveRecord::Migration
  def change
    create_table :m_beli_retur_a_hs do |t|
      t.string :kode_tmp, limit: 20
      t.string :kode_disp, limit: 20
      t.string :id_cabang, limit: 2
      t.string :simbol, limit: 5
      t.datetime :tanggal
      t.string :no_po_disp, limit: 20
      t.string :id_supplier, limit: 10
      t.string :id_valuta, limit: 2
      t.decimal :nilai_rate_kurs, default:0
      t.decimal :total_sub_total, default:0
      t.decimal :total_disc_persen, default:0
      t.decimal :total_disc_nominal, default:0
      t.decimal :total_sub_total_kurang_disc, default:0
      t.decimal :total_ppn_disc, default:0
      t.decimal :total_ppn_nominal, default:0
      t.decimal :total_grand_total, default:0
      t.decimal :total_grand_total_po, default:0
      t.decimal :total_grand_total_retur, default:0
      t.decimal :total_dp, default:0
      t.datetime :tgl_kirim
      t.string :keterangan, limit:200
      t.string :updated_by, limit:30
      t.integer :status1, default: 0
      t.string :st_progress, limit:20
      t.decimal :qty_all_retur, default:0
      t.decimal :qty_sj, default:0
      t.integer :is_ar, default:0
      t.string :id_ar_disp, limit:20
      t.boolean :is_drafted
      t.string :no_revisi, limit:2

      t.timestamps
    end
  end
end
