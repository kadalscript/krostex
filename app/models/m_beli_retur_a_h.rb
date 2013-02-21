class MBeliReturAH < ActiveRecord::Base
  attr_accessible :id_ar_disp, :id_cabang, :id_supplier, :id_valuta, :is_ar, :is_drafted, :keterangan, :kode_disp, :kode_tmp, :nilai_rate_kurs, :no_po_disp, :no_revisi, :qty_all_retur, :qty_sj, :simbol, :st_progress, :status1, :tanggal, :tgl_kirim, :total_disc_nominal, :total_disc_persen, :total_dp, :total_grand_total, :total_grand_total_po, :total_grand_total_retur, :total_ppn_disc, :total_ppn_nominal, :total_sub_total, :total_sub_total_kurang_disc, :updated_by
end
