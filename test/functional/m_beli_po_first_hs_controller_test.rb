require 'test_helper'

class MBeliPoFirstHsControllerTest < ActionController::TestCase
  setup do
    @m_beli_po_first_h = m_beli_po_first_hs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_beli_po_first_hs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_beli_po_first_h" do
    assert_difference('MBeliPoFirstH.count') do
      post :create, m_beli_po_first_h: { id_alamat_supplier: @m_beli_po_first_h.id_alamat_supplier, id_cabang: @m_beli_po_first_h.id_cabang, id_supplier: @m_beli_po_first_h.id_supplier, id_valuta: @m_beli_po_first_h.id_valuta, is_close_btb: @m_beli_po_first_h.is_close_btb, is_close_po: @m_beli_po_first_h.is_close_po, keterangan: @m_beli_po_first_h.keterangan, keterangan_syarat_bayar: @m_beli_po_first_h.keterangan_syarat_bayar, kode_disp: @m_beli_po_first_h.kode_disp, kode_tmp: @m_beli_po_first_h.kode_tmp, nilai_rate_kurs: @m_beli_po_first_h.nilai_rate_kurs, no_penawaran: @m_beli_po_first_h.no_penawaran, qty_all_btb: @m_beli_po_first_h.qty_all_btb, qty_all_close: @m_beli_po_first_h.qty_all_close, qty_all_po: @m_beli_po_first_h.qty_all_po, simbol: @m_beli_po_first_h.simbol, st_progress: @m_beli_po_first_h.st_progress, status1: @m_beli_po_first_h.status1, tanggal: @m_beli_po_first_h.tanggal, tgl_jth_tempo: @m_beli_po_first_h.tgl_jth_tempo, tgl_kirim: @m_beli_po_first_h.tgl_kirim, total_disc_nominal: @m_beli_po_first_h.total_disc_nominal, total_disc_persen: @m_beli_po_first_h.total_disc_persen, total_grand_total: @m_beli_po_first_h.total_grand_total, total_nota: @m_beli_po_first_h.total_nota, total_ppn_disc: @m_beli_po_first_h.total_ppn_disc, total_ppn_nominal: @m_beli_po_first_h.total_ppn_nominal, total_retur: @m_beli_po_first_h.total_retur, total_sub_total: @m_beli_po_first_h.total_sub_total, total_sub_total_kurang_disc: @m_beli_po_first_h.total_sub_total_kurang_disc, updated_by: @m_beli_po_first_h.updated_by }
    end

    assert_redirected_to m_beli_po_first_h_path(assigns(:m_beli_po_first_h))
  end

  test "should show m_beli_po_first_h" do
    get :show, id: @m_beli_po_first_h
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_beli_po_first_h
    assert_response :success
  end

  test "should update m_beli_po_first_h" do
    put :update, id: @m_beli_po_first_h, m_beli_po_first_h: { id_alamat_supplier: @m_beli_po_first_h.id_alamat_supplier, id_cabang: @m_beli_po_first_h.id_cabang, id_supplier: @m_beli_po_first_h.id_supplier, id_valuta: @m_beli_po_first_h.id_valuta, is_close_btb: @m_beli_po_first_h.is_close_btb, is_close_po: @m_beli_po_first_h.is_close_po, keterangan: @m_beli_po_first_h.keterangan, keterangan_syarat_bayar: @m_beli_po_first_h.keterangan_syarat_bayar, kode_disp: @m_beli_po_first_h.kode_disp, kode_tmp: @m_beli_po_first_h.kode_tmp, nilai_rate_kurs: @m_beli_po_first_h.nilai_rate_kurs, no_penawaran: @m_beli_po_first_h.no_penawaran, qty_all_btb: @m_beli_po_first_h.qty_all_btb, qty_all_close: @m_beli_po_first_h.qty_all_close, qty_all_po: @m_beli_po_first_h.qty_all_po, simbol: @m_beli_po_first_h.simbol, st_progress: @m_beli_po_first_h.st_progress, status1: @m_beli_po_first_h.status1, tanggal: @m_beli_po_first_h.tanggal, tgl_jth_tempo: @m_beli_po_first_h.tgl_jth_tempo, tgl_kirim: @m_beli_po_first_h.tgl_kirim, total_disc_nominal: @m_beli_po_first_h.total_disc_nominal, total_disc_persen: @m_beli_po_first_h.total_disc_persen, total_grand_total: @m_beli_po_first_h.total_grand_total, total_nota: @m_beli_po_first_h.total_nota, total_ppn_disc: @m_beli_po_first_h.total_ppn_disc, total_ppn_nominal: @m_beli_po_first_h.total_ppn_nominal, total_retur: @m_beli_po_first_h.total_retur, total_sub_total: @m_beli_po_first_h.total_sub_total, total_sub_total_kurang_disc: @m_beli_po_first_h.total_sub_total_kurang_disc, updated_by: @m_beli_po_first_h.updated_by }
    assert_redirected_to m_beli_po_first_h_path(assigns(:m_beli_po_first_h))
  end

  test "should destroy m_beli_po_first_h" do
    assert_difference('MBeliPoFirstH.count', -1) do
      delete :destroy, id: @m_beli_po_first_h
    end

    assert_redirected_to m_beli_po_first_hs_path
  end
end
