require 'test_helper'

class MWarehouseKsBrgAsControllerTest < ActionController::TestCase
  setup do
    @m_warehouse_ks_brg_a = m_warehouse_ks_brg_as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_warehouse_ks_brg_as)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_warehouse_ks_brg_a" do
    assert_difference('MWarehouseKsBrgA.count') do
      post :create, m_warehouse_ks_brg_a: { id_cabang: @m_warehouse_ks_brg_a.id_cabang, id_gudang: @m_warehouse_ks_brg_a.id_gudang, kode_brg: @m_warehouse_ks_brg_a.kode_brg, qty_mc: @m_warehouse_ks_brg_a.qty_mc, qty_real: @m_warehouse_ks_brg_a.qty_real }
    end

    assert_redirected_to m_warehouse_ks_brg_a_path(assigns(:m_warehouse_ks_brg_a))
  end

  test "should show m_warehouse_ks_brg_a" do
    get :show, id: @m_warehouse_ks_brg_a
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_warehouse_ks_brg_a
    assert_response :success
  end

  test "should update m_warehouse_ks_brg_a" do
    put :update, id: @m_warehouse_ks_brg_a, m_warehouse_ks_brg_a: { id_cabang: @m_warehouse_ks_brg_a.id_cabang, id_gudang: @m_warehouse_ks_brg_a.id_gudang, kode_brg: @m_warehouse_ks_brg_a.kode_brg, qty_mc: @m_warehouse_ks_brg_a.qty_mc, qty_real: @m_warehouse_ks_brg_a.qty_real }
    assert_redirected_to m_warehouse_ks_brg_a_path(assigns(:m_warehouse_ks_brg_a))
  end

  test "should destroy m_warehouse_ks_brg_a" do
    assert_difference('MWarehouseKsBrgA.count', -1) do
      delete :destroy, id: @m_warehouse_ks_brg_a
    end

    assert_redirected_to m_warehouse_ks_brg_as_path
  end
end
