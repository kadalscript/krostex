class MBeliPoFirstH < ActiveRecord::Base
  attr_accessible :id_alamat_supplier, :id_cabang, :id_supplier, :id_valuta, :is_close_btb,
                  :is_close_po, :keterangan, :keterangan_syarat_bayar, :kode_disp, :kode_tmp,
                  :nilai_rate_kurs, :no_penawaran, :qty_all_btb, :qty_all_close, :qty_all_po,
                  :simbol, :st_progress, :status1, :tanggal, :tgl_jth_tempo, :tgl_kirim,
                  :total_disc_nominal, :total_disc_persen, :total_grand_total, :total_nota,
                  :total_ppn_disc, :total_ppn_nominal, :total_retur, :total_sub_total,
                  :total_sub_total_kurang_disc, :updated_by, :supplier, :is_drafted
  attr_accessor :supplier
  has_many :m_beli_po_second_ds, class_name: 'MBeliPoSecondD', foreign_key: 'kode_tmp'
  belongs_to :b_supplier, class_name: 'BSupplier', foreign_key: 'id_supplier'
  belongs_to :a_mata_uang, class_name: 'AMataUang', foreign_key: 'id_valuta'
end
