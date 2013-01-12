require 'test_helper'

class MWarehouseInSecondDsControllerTest < ActionController::TestCase
  setup do
    @m_warehouse_in_second_d = m_warehouse_in_second_ds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_warehouse_in_second_ds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_warehouse_in_second_d" do
    assert_difference('MWarehouseInSecondD.count') do
      post :create, m_warehouse_in_second_d: { created_at: @m_warehouse_in_second_d.created_at, kode_brg: @m_warehouse_in_second_d.kode_brg, kode_brg_ext: @m_warehouse_in_second_d.kode_brg_ext, kode_brg_lot: @m_warehouse_in_second_d.kode_brg_lot, kode_tmp: @m_warehouse_in_second_d.kode_tmp, qty: @m_warehouse_in_second_d.qty, updated_at: @m_warehouse_in_second_d.updated_at }
    end

    assert_redirected_to m_warehouse_in_second_d_path(assigns(:m_warehouse_in_second_d))
  end

  test "should show m_warehouse_in_second_d" do
    get :show, id: @m_warehouse_in_second_d
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_warehouse_in_second_d
    assert_response :success
  end

  test "should update m_warehouse_in_second_d" do
    put :update, id: @m_warehouse_in_second_d, m_warehouse_in_second_d: { created_at: @m_warehouse_in_second_d.created_at, kode_brg: @m_warehouse_in_second_d.kode_brg, kode_brg_ext: @m_warehouse_in_second_d.kode_brg_ext, kode_brg_lot: @m_warehouse_in_second_d.kode_brg_lot, kode_tmp: @m_warehouse_in_second_d.kode_tmp, qty: @m_warehouse_in_second_d.qty, updated_at: @m_warehouse_in_second_d.updated_at }
    assert_redirected_to m_warehouse_in_second_d_path(assigns(:m_warehouse_in_second_d))
  end

  test "should destroy m_warehouse_in_second_d" do
    assert_difference('MWarehouseInSecondD.count', -1) do
      delete :destroy, id: @m_warehouse_in_second_d
    end

    assert_redirected_to m_warehouse_in_second_ds_path
  end
end
