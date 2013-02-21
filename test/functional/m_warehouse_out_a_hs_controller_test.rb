require 'test_helper'

class MWarehouseOutAHsControllerTest < ActionController::TestCase
  setup do
    @m_warehouse_out_a_h = m_warehouse_out_a_hs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_warehouse_out_a_hs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_warehouse_out_a_h" do
    assert_difference('MWarehouseOutAH.count') do
      post :create, m_warehouse_out_a_h: { created_at: @m_warehouse_out_a_h.created_at, id_cabang: @m_warehouse_out_a_h.id_cabang, id_customer: @m_warehouse_out_a_h.id_customer, id_gudang_out: @m_warehouse_out_a_h.id_gudang_out, id_invoice_disp: @m_warehouse_out_a_h.id_invoice_disp, id_po_disp: @m_warehouse_out_a_h.id_po_disp, id_reff_disp: @m_warehouse_out_a_h.id_reff_disp, id_so_disp: @m_warehouse_out_a_h.id_so_disp, id_supplier: @m_warehouse_out_a_h.id_supplier, id_surat_jalan: @m_warehouse_out_a_h.id_surat_jalan, is_drafted: @m_warehouse_out_a_h.is_drafted, is_invoice: @m_warehouse_out_a_h.is_invoice, jns_inv: @m_warehouse_out_a_h.jns_inv, keterangan: @m_warehouse_out_a_h.keterangan, kode_disp: @m_warehouse_out_a_h.kode_disp, kode_tmp: @m_warehouse_out_a_h.kode_tmp, nama_referensi: @m_warehouse_out_a_h.nama_referensi, no_revisi: @m_warehouse_out_a_h.no_revisi, simbol: @m_warehouse_out_a_h.simbol, st_progress: @m_warehouse_out_a_h.st_progress, status1: @m_warehouse_out_a_h.status1, tanggal: @m_warehouse_out_a_h.tanggal, total_qty_out: @m_warehouse_out_a_h.total_qty_out, updated_at: @m_warehouse_out_a_h.updated_at, updated_by: @m_warehouse_out_a_h.updated_by }
    end

    assert_redirected_to m_warehouse_out_a_h_path(assigns(:m_warehouse_out_a_h))
  end

  test "should show m_warehouse_out_a_h" do
    get :show, id: @m_warehouse_out_a_h
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_warehouse_out_a_h
    assert_response :success
  end

  test "should update m_warehouse_out_a_h" do
    put :update, id: @m_warehouse_out_a_h, m_warehouse_out_a_h: { created_at: @m_warehouse_out_a_h.created_at, id_cabang: @m_warehouse_out_a_h.id_cabang, id_customer: @m_warehouse_out_a_h.id_customer, id_gudang_out: @m_warehouse_out_a_h.id_gudang_out, id_invoice_disp: @m_warehouse_out_a_h.id_invoice_disp, id_po_disp: @m_warehouse_out_a_h.id_po_disp, id_reff_disp: @m_warehouse_out_a_h.id_reff_disp, id_so_disp: @m_warehouse_out_a_h.id_so_disp, id_supplier: @m_warehouse_out_a_h.id_supplier, id_surat_jalan: @m_warehouse_out_a_h.id_surat_jalan, is_drafted: @m_warehouse_out_a_h.is_drafted, is_invoice: @m_warehouse_out_a_h.is_invoice, jns_inv: @m_warehouse_out_a_h.jns_inv, keterangan: @m_warehouse_out_a_h.keterangan, kode_disp: @m_warehouse_out_a_h.kode_disp, kode_tmp: @m_warehouse_out_a_h.kode_tmp, nama_referensi: @m_warehouse_out_a_h.nama_referensi, no_revisi: @m_warehouse_out_a_h.no_revisi, simbol: @m_warehouse_out_a_h.simbol, st_progress: @m_warehouse_out_a_h.st_progress, status1: @m_warehouse_out_a_h.status1, tanggal: @m_warehouse_out_a_h.tanggal, total_qty_out: @m_warehouse_out_a_h.total_qty_out, updated_at: @m_warehouse_out_a_h.updated_at, updated_by: @m_warehouse_out_a_h.updated_by }
    assert_redirected_to m_warehouse_out_a_h_path(assigns(:m_warehouse_out_a_h))
  end

  test "should destroy m_warehouse_out_a_h" do
    assert_difference('MWarehouseOutAH.count', -1) do
      delete :destroy, id: @m_warehouse_out_a_h
    end

    assert_redirected_to m_warehouse_out_a_hs_path
  end
end
