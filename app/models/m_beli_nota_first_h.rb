class MBeliNotaFirstH < ActiveRecord::Base
  attr_accessible :id_ap_disp, :id_cabang, :id_supplier, :id_valuta, :is_ap, :keterangan, :kode_disp, :kode_tmp, :nilai_rate_kurs, :no_btb_list_disp, :no_po_disp, :qty_all_nota, :simbol, :st_progress, :status1, :tanggal, :tgl_jth_tempo, :total_disc_nominal, :total_disc_persen, :total_dp, :total_grand_total, :total_grand_total_po, :total_grand_total_retur, :total_ppn_disc, :total_ppn_nominal, :total_sub_total, :total_sub_total_kurang_disc, :updated_by, :is_drafted
  has_many :details, class_name: 'MBeliNotaSecondD', foreign_key: 'kode_tmp'
  belongs_to :supplier, class_name: 'BSupplier', foreign_key: 'id_supplier' # Related to one supplier
  belongs_to :valuta, class_name: 'AMataUang', foreign_key: 'id_valuta' # Related to one valuta

  # Getting undrafted nota
  def self.undrafted
    MBeliNotaFirstH.where(is_drafted: false)
  end
end
