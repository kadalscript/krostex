require 'test_helper'

class BBarangExtsControllerTest < ActionController::TestCase
  setup do
    @b_barang_ext = b_barang_exts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_barang_exts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_barang_ext" do
    assert_difference('BBarangExt.count') do
      post :create, b_barang_ext: { id_satuan_kemasan: @b_barang_ext.id_satuan_kemasan, id_size: @b_barang_ext.id_size, id_supplier: @b_barang_ext.id_supplier, id_warna: @b_barang_ext.id_warna, kode: @b_barang_ext.kode, kode_alias: @b_barang_ext.kode_alias, kode_ext: @b_barang_ext.kode_ext, nama_ext: @b_barang_ext.nama_ext, updated_by: @b_barang_ext.updated_by }
    end

    assert_redirected_to b_barang_ext_path(assigns(:b_barang_ext))
  end

  test "should show b_barang_ext" do
    get :show, id: @b_barang_ext
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_barang_ext
    assert_response :success
  end

  test "should update b_barang_ext" do
    put :update, id: @b_barang_ext, b_barang_ext: { id_satuan_kemasan: @b_barang_ext.id_satuan_kemasan, id_size: @b_barang_ext.id_size, id_supplier: @b_barang_ext.id_supplier, id_warna: @b_barang_ext.id_warna, kode: @b_barang_ext.kode, kode_alias: @b_barang_ext.kode_alias, kode_ext: @b_barang_ext.kode_ext, nama_ext: @b_barang_ext.nama_ext, updated_by: @b_barang_ext.updated_by }
    assert_redirected_to b_barang_ext_path(assigns(:b_barang_ext))
  end

  test "should destroy b_barang_ext" do
    assert_difference('BBarangExt.count', -1) do
      delete :destroy, id: @b_barang_ext
    end

    assert_redirected_to b_barang_exts_path
  end
end
