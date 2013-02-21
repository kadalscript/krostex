require 'test_helper'

class MWarehouseKsBrgEExtLotsControllerTest < ActionController::TestCase
  setup do
    @m_warehouse_ks_brg_e_ext_lot = m_warehouse_ks_brg_e_ext_lots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_warehouse_ks_brg_e_ext_lots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_warehouse_ks_brg_e_ext_lot" do
    assert_difference('MWarehouseKsBrgEExtLot.count') do
      post :create, m_warehouse_ks_brg_e_ext_lot: { id_cabang: @m_warehouse_ks_brg_e_ext_lot.id_cabang, id_gudang: @m_warehouse_ks_brg_e_ext_lot.id_gudang, is_close_mc: @m_warehouse_ks_brg_e_ext_lot.is_close_mc, is_close_real: @m_warehouse_ks_brg_e_ext_lot.is_close_real, kode_brg: @m_warehouse_ks_brg_e_ext_lot.kode_brg, kode_brg_ext: @m_warehouse_ks_brg_e_ext_lot.kode_brg_ext, kode_lot_number: @m_warehouse_ks_brg_e_ext_lot.kode_lot_number, qty_in: @m_warehouse_ks_brg_e_ext_lot.qty_in, qty_out_mc: @m_warehouse_ks_brg_e_ext_lot.qty_out_mc, qty_out_real: @m_warehouse_ks_brg_e_ext_lot.qty_out_real, simbol: @m_warehouse_ks_brg_e_ext_lot.simbol, st_progress: @m_warehouse_ks_brg_e_ext_lot.st_progress, status1: @m_warehouse_ks_brg_e_ext_lot.status1, tanggal: @m_warehouse_ks_brg_e_ext_lot.tanggal, updated_by: @m_warehouse_ks_brg_e_ext_lot.updated_by }
    end

    assert_redirected_to m_warehouse_ks_brg_e_ext_lot_path(assigns(:m_warehouse_ks_brg_e_ext_lot))
  end

  test "should show m_warehouse_ks_brg_e_ext_lot" do
    get :show, id: @m_warehouse_ks_brg_e_ext_lot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_warehouse_ks_brg_e_ext_lot
    assert_response :success
  end

  test "should update m_warehouse_ks_brg_e_ext_lot" do
    put :update, id: @m_warehouse_ks_brg_e_ext_lot, m_warehouse_ks_brg_e_ext_lot: { id_cabang: @m_warehouse_ks_brg_e_ext_lot.id_cabang, id_gudang: @m_warehouse_ks_brg_e_ext_lot.id_gudang, is_close_mc: @m_warehouse_ks_brg_e_ext_lot.is_close_mc, is_close_real: @m_warehouse_ks_brg_e_ext_lot.is_close_real, kode_brg: @m_warehouse_ks_brg_e_ext_lot.kode_brg, kode_brg_ext: @m_warehouse_ks_brg_e_ext_lot.kode_brg_ext, kode_lot_number: @m_warehouse_ks_brg_e_ext_lot.kode_lot_number, qty_in: @m_warehouse_ks_brg_e_ext_lot.qty_in, qty_out_mc: @m_warehouse_ks_brg_e_ext_lot.qty_out_mc, qty_out_real: @m_warehouse_ks_brg_e_ext_lot.qty_out_real, simbol: @m_warehouse_ks_brg_e_ext_lot.simbol, st_progress: @m_warehouse_ks_brg_e_ext_lot.st_progress, status1: @m_warehouse_ks_brg_e_ext_lot.status1, tanggal: @m_warehouse_ks_brg_e_ext_lot.tanggal, updated_by: @m_warehouse_ks_brg_e_ext_lot.updated_by }
    assert_redirected_to m_warehouse_ks_brg_e_ext_lot_path(assigns(:m_warehouse_ks_brg_e_ext_lot))
  end

  test "should destroy m_warehouse_ks_brg_e_ext_lot" do
    assert_difference('MWarehouseKsBrgEExtLot.count', -1) do
      delete :destroy, id: @m_warehouse_ks_brg_e_ext_lot
    end

    assert_redirected_to m_warehouse_ks_brg_e_ext_lots_path
  end
end
