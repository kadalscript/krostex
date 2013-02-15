require 'test_helper'

class MWarehouseKsBrgBDsControllerTest < ActionController::TestCase
  setup do
    @m_warehouse_ks_brg_b_d = m_warehouse_ks_brg_b_ds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_warehouse_ks_brg_b_ds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_warehouse_ks_brg_b_d" do
    assert_difference('MWarehouseKsBrgBD.count') do
      post :create, m_warehouse_ks_brg_b_d: { catatan: @m_warehouse_ks_brg_b_d.catatan, id_cabang: @m_warehouse_ks_brg_b_d.id_cabang, id_gudang: @m_warehouse_ks_brg_b_d.id_gudang, keterangan: @m_warehouse_ks_brg_b_d.keterangan, kode_brg: @m_warehouse_ks_brg_b_d.kode_brg, kode_brg_lot: @m_warehouse_ks_brg_b_d.kode_brg_lot, qty_awal: @m_warehouse_ks_brg_b_d.qty_awal, qty_keluar: @m_warehouse_ks_brg_b_d.qty_keluar, qty_masuk: @m_warehouse_ks_brg_b_d.qty_masuk, qty_saldo: @m_warehouse_ks_brg_b_d.qty_saldo, simbol: @m_warehouse_ks_brg_b_d.simbol, tanggal: @m_warehouse_ks_brg_b_d.tanggal, tipe_stok: @m_warehouse_ks_brg_b_d.tipe_stok }
    end

    assert_redirected_to m_warehouse_ks_brg_b_d_path(assigns(:m_warehouse_ks_brg_b_d))
  end

  test "should show m_warehouse_ks_brg_b_d" do
    get :show, id: @m_warehouse_ks_brg_b_d
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_warehouse_ks_brg_b_d
    assert_response :success
  end

  test "should update m_warehouse_ks_brg_b_d" do
    put :update, id: @m_warehouse_ks_brg_b_d, m_warehouse_ks_brg_b_d: { catatan: @m_warehouse_ks_brg_b_d.catatan, id_cabang: @m_warehouse_ks_brg_b_d.id_cabang, id_gudang: @m_warehouse_ks_brg_b_d.id_gudang, keterangan: @m_warehouse_ks_brg_b_d.keterangan, kode_brg: @m_warehouse_ks_brg_b_d.kode_brg, kode_brg_lot: @m_warehouse_ks_brg_b_d.kode_brg_lot, qty_awal: @m_warehouse_ks_brg_b_d.qty_awal, qty_keluar: @m_warehouse_ks_brg_b_d.qty_keluar, qty_masuk: @m_warehouse_ks_brg_b_d.qty_masuk, qty_saldo: @m_warehouse_ks_brg_b_d.qty_saldo, simbol: @m_warehouse_ks_brg_b_d.simbol, tanggal: @m_warehouse_ks_brg_b_d.tanggal, tipe_stok: @m_warehouse_ks_brg_b_d.tipe_stok }
    assert_redirected_to m_warehouse_ks_brg_b_d_path(assigns(:m_warehouse_ks_brg_b_d))
  end

  test "should destroy m_warehouse_ks_brg_b_d" do
    assert_difference('MWarehouseKsBrgBD.count', -1) do
      delete :destroy, id: @m_warehouse_ks_brg_b_d
    end

    assert_redirected_to m_warehouse_ks_brg_b_ds_path
  end
end
