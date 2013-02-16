class CreateMBeliPoAHs < ActiveRecord::Migration
  def change
    create_table :m_beli_po_a_hs do |t|
      t.string :kode_tmp , limit:20
      t.string :kode_disp, limit:20
      t.string :id_cabang, limit:5
      t.string :simbol, limit:5
      t.datetime :tanggal
      t.string :no_penawaran, limit:20
      t.string :id_supplier, limit:10
      t.string :id_alamat_supplier, limit:15
      t.string :id_valuta, limit:5
      t.decimal :nilai_rate_kurs, default:0
      t.decimal :total_sub_total, default:0
      t.decimal :total_disc_persen, default:0
      t.decimal :total_disc_nominal, default:0
      t.decimal :total_sub_total_kurang_disc, default:0
      t.decimal :total_ppn_disc, default:0
      t.decimal :total_ppn_nominal, default:0
      t.decimal :total_grand_total, default:0
      t.datetime :tgl_kirim
      t.datetime :tgl_jth_tempo
      t.string :keterangan, limit:100
      t.string :keterangan_syarat_bayar, limit:100
      t.string :updated_by, limit:30
      t.integer :status1, default:0
      t.string :st_progress, limit:20
      t.decimal :qty_all_po, default:0
      t.decimal :qty_all_btb, default:0
      t.decimal :qty_all_close, default:0
      t.decimal :total_nota, default:0
      t.decimal :total_retur, default:0
      t.integer :is_close_btb, default:0
      t.integer :is_close_po, default:0
      t.boolean :is_drafted
      t.string :id_gudang_kirim, limit: 10
      t.timestamps
    end
  end
end
