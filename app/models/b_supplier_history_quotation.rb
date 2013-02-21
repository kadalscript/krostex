class BSupplierHistoryQuotation < ActiveRecord::Base
  set_table_name :b_supplier_e_history_quotations
  attr_accessible   :kode, :kode_brg, :kode_brg_ext,
                    :penawaran_harga_1      , :penawaran_harga_2      , :penawaran_harga_3      , :penawaran_harga_4      , :penawaran_harga_cur,
                    :penawaran_kode_1       , :penawaran_kode_2       , :penawaran_kode_3       , :penawaran_kode_4       , :penawaran_kode_cur,
                    :penawaran_kode_satuan_1, :penawaran_kode_satuan_2, :penawaran_kode_satuan_3, :penawaran_kode_satuan_4, :penawaran_kode_satuan_cur,
                    :penawaran_kode_valuta_1, :penawaran_kode_valuta_2, :penawaran_kode_valuta_3, :penawaran_kode_valuta_4, :penawaran_kode_valuta_cur,
                    :penawaran_min_order_1  , :penawaran_min_order_2  , :penawaran_min_order_3  , :penawaran_min_order_4  , :penawaran_min_order_cur,
                    :penawaran_tgl_1        , :penawaran_tgl_2        , :penawaran_tgl_3        , :penawaran_tgl_4        , :penawaran_tgl_cur,
                    :penawaran_waktu_kirim_1, :penawaran_waktu_kirim_2, :penawaran_waktu_kirim_3, :penawaran_waktu_kirim_4, :penawaran_waktu_kirim_cur,
                    :pos_penawaran_x, :st_progress, :status1, :updated_by, :id_satuan_kemasan

  before_save :triggering_penawaran

  def barang
    BBarang.where(kode: self.kode_brg).first
  end

  def kemasan
    AKemasan.where(kode: self.id_satuan_kemasan).first
  end

  def triggering_penawaran
    self.penawaran_kode_1 = self.penawaran_kode_cur
    self.penawaran_tgl_1 = self.penawaran_tgl_cur
    self.penawaran_kode_valuta_1 = self.penawaran_kode_valuta_cur
    self.penawaran_harga_1 = self.penawaran_harga_cur
    self.penawaran_min_order_1 = self.penawaran_min_order_cur
    self.penawaran_kode_satuan_1 = self.penawaran_kode_satuan_cur
    self.penawaran_waktu_kirim_1 = self.penawaran_waktu_kirim_cur

  end
end
