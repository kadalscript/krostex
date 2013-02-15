require 'test_helper'

class MWarehouseKsBrgCExtsControllerTest < ActionController::TestCase
  setup do
    @m_warehouse_ks_brg_c_ext = m_warehouse_ks_brg_c_exts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_warehouse_ks_brg_c_exts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_warehouse_ks_brg_c_ext" do
    assert_difference('MWarehouseKsBrgCExt.count') do
      post :create, m_warehouse_ks_brg_c_ext: { id_cabang: @m_warehouse_ks_brg_c_ext.id_cabang, id_gudang: @m_warehouse_ks_brg_c_ext.id_gudang, kode_brg: @m_warehouse_ks_brg_c_ext.kode_brg, kode_brg_ext: @m_warehouse_ks_brg_c_ext.kode_brg_ext, qty_mc: @m_warehouse_ks_brg_c_ext.qty_mc, qty_real: @m_warehouse_ks_brg_c_ext.qty_real }
    end

    assert_redirected_to m_warehouse_ks_brg_c_ext_path(assigns(:m_warehouse_ks_brg_c_ext))
  end

  test "should show m_warehouse_ks_brg_c_ext" do
    get :show, id: @m_warehouse_ks_brg_c_ext
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_warehouse_ks_brg_c_ext
    assert_response :success
  end

  test "should update m_warehouse_ks_brg_c_ext" do
    put :update, id: @m_warehouse_ks_brg_c_ext, m_warehouse_ks_brg_c_ext: { id_cabang: @m_warehouse_ks_brg_c_ext.id_cabang, id_gudang: @m_warehouse_ks_brg_c_ext.id_gudang, kode_brg: @m_warehouse_ks_brg_c_ext.kode_brg, kode_brg_ext: @m_warehouse_ks_brg_c_ext.kode_brg_ext, qty_mc: @m_warehouse_ks_brg_c_ext.qty_mc, qty_real: @m_warehouse_ks_brg_c_ext.qty_real }
    assert_redirected_to m_warehouse_ks_brg_c_ext_path(assigns(:m_warehouse_ks_brg_c_ext))
  end

  test "should destroy m_warehouse_ks_brg_c_ext" do
    assert_difference('MWarehouseKsBrgCExt.count', -1) do
      delete :destroy, id: @m_warehouse_ks_brg_c_ext
    end

    assert_redirected_to m_warehouse_ks_brg_c_exts_path
  end
end
