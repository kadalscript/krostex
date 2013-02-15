require 'test_helper'

class MBeliReturBDsControllerTest < ActionController::TestCase
  setup do
    @m_beli_retur_b_d = m_beli_retur_b_ds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_beli_retur_b_ds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_beli_retur_b_d" do
    assert_difference('MBeliReturBD.count') do
      post :create, m_beli_retur_b_d: { diskon: @m_beli_retur_b_d.diskon, harga: @m_beli_retur_b_d.harga, id_valuta: @m_beli_retur_b_d.id_valuta, kode_barang: @m_beli_retur_b_d.kode_barang, kode_brg_ext: @m_beli_retur_b_d.kode_brg_ext, kode_tmp: @m_beli_retur_b_d.kode_tmp, qty: @m_beli_retur_b_d.qty, total_kurang_diskon: @m_beli_retur_b_d.total_kurang_diskon, total_qty_kali_harga: @m_beli_retur_b_d.total_qty_kali_harga, total_qty_kali_harga_kali_diskon: @m_beli_retur_b_d.total_qty_kali_harga_kali_diskon }
    end

    assert_redirected_to m_beli_retur_b_d_path(assigns(:m_beli_retur_b_d))
  end

  test "should show m_beli_retur_b_d" do
    get :show, id: @m_beli_retur_b_d
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_beli_retur_b_d
    assert_response :success
  end

  test "should update m_beli_retur_b_d" do
    put :update, id: @m_beli_retur_b_d, m_beli_retur_b_d: { diskon: @m_beli_retur_b_d.diskon, harga: @m_beli_retur_b_d.harga, id_valuta: @m_beli_retur_b_d.id_valuta, kode_barang: @m_beli_retur_b_d.kode_barang, kode_brg_ext: @m_beli_retur_b_d.kode_brg_ext, kode_tmp: @m_beli_retur_b_d.kode_tmp, qty: @m_beli_retur_b_d.qty, total_kurang_diskon: @m_beli_retur_b_d.total_kurang_diskon, total_qty_kali_harga: @m_beli_retur_b_d.total_qty_kali_harga, total_qty_kali_harga_kali_diskon: @m_beli_retur_b_d.total_qty_kali_harga_kali_diskon }
    assert_redirected_to m_beli_retur_b_d_path(assigns(:m_beli_retur_b_d))
  end

  test "should destroy m_beli_retur_b_d" do
    assert_difference('MBeliReturBD.count', -1) do
      delete :destroy, id: @m_beli_retur_b_d
    end

    assert_redirected_to m_beli_retur_b_ds_path
  end
end
