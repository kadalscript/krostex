require 'test_helper'

class MWarehouseInFirstHsControllerTest < ActionController::TestCase
  setup do
    @m_warehouse_in_first_h = m_warehouse_in_first_hs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_warehouse_in_first_hs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_warehouse_in_first_h" do
    assert_difference('MWarehouseInFirstH.count') do
      post :create, m_warehouse_in_first_h: { created_at: @m_warehouse_in_first_h.created_at, id_cabang: @m_warehouse_in_first_h.id_cabang, id_customer: @m_warehouse_in_first_h.id_customer, id_gudang_potong: @m_warehouse_in_first_h.id_gudang_potong, id_nota_beli_disp: @m_warehouse_in_first_h.id_nota_beli_disp, id_po_disp: @m_warehouse_in_first_h.id_po_disp, id_reff_disp: @m_warehouse_in_first_h.id_reff_disp, id_supplier: @m_warehouse_in_first_h.id_supplier, id_surat_jalan: @m_warehouse_in_first_h.id_surat_jalan, is_nota: @m_warehouse_in_first_h.is_nota, jns_inv: @m_warehouse_in_first_h.jns_inv, keterangan: @m_warehouse_in_first_h.keterangan, kode_disp: @m_warehouse_in_first_h.kode_disp, kode_tmp: @m_warehouse_in_first_h.kode_tmp, simbol: @m_warehouse_in_first_h.simbol, st_progress: @m_warehouse_in_first_h.st_progress, status1: @m_warehouse_in_first_h.status1, tanggal: @m_warehouse_in_first_h.tanggal, total_qty_in: @m_warehouse_in_first_h.total_qty_in, updated_at: @m_warehouse_in_first_h.updated_at, updated_by: @m_warehouse_in_first_h.updated_by }
    end

    assert_redirected_to m_warehouse_in_first_h_path(assigns(:m_warehouse_in_first_h))
  end

  test "should show m_warehouse_in_first_h" do
    get :show, id: @m_warehouse_in_first_h
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_warehouse_in_first_h
    assert_response :success
  end

  test "should update m_warehouse_in_first_h" do
    put :update, id: @m_warehouse_in_first_h, m_warehouse_in_first_h: { created_at: @m_warehouse_in_first_h.created_at, id_cabang: @m_warehouse_in_first_h.id_cabang, id_customer: @m_warehouse_in_first_h.id_customer, id_gudang_potong: @m_warehouse_in_first_h.id_gudang_potong, id_nota_beli_disp: @m_warehouse_in_first_h.id_nota_beli_disp, id_po_disp: @m_warehouse_in_first_h.id_po_disp, id_reff_disp: @m_warehouse_in_first_h.id_reff_disp, id_supplier: @m_warehouse_in_first_h.id_supplier, id_surat_jalan: @m_warehouse_in_first_h.id_surat_jalan, is_nota: @m_warehouse_in_first_h.is_nota, jns_inv: @m_warehouse_in_first_h.jns_inv, keterangan: @m_warehouse_in_first_h.keterangan, kode_disp: @m_warehouse_in_first_h.kode_disp, kode_tmp: @m_warehouse_in_first_h.kode_tmp, simbol: @m_warehouse_in_first_h.simbol, st_progress: @m_warehouse_in_first_h.st_progress, status1: @m_warehouse_in_first_h.status1, tanggal: @m_warehouse_in_first_h.tanggal, total_qty_in: @m_warehouse_in_first_h.total_qty_in, updated_at: @m_warehouse_in_first_h.updated_at, updated_by: @m_warehouse_in_first_h.updated_by }
    assert_redirected_to m_warehouse_in_first_h_path(assigns(:m_warehouse_in_first_h))
  end

  test "should destroy m_warehouse_in_first_h" do
    assert_difference('MWarehouseInFirstH.count', -1) do
      delete :destroy, id: @m_warehouse_in_first_h
    end

    assert_redirected_to m_warehouse_in_first_hs_path
  end
end
