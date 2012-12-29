require 'test_helper'

class BBarangsControllerTest < ActionController::TestCase
  setup do
    @b_barang = b_barangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_barangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_barang" do
    assert_difference('BBarang.count') do
      post :create, b_barang: { id_department: @b_barang.id_department, id_golongan: @b_barang.id_golongan, id_level_five: @b_barang.id_level_five, id_level_four: @b_barang.id_level_four, id_satuan: @b_barang.id_satuan, id_type: @b_barang.id_type, kode: @b_barang.kode, max_stok: @b_barang.max_stok, min_stok: @b_barang.min_stok, nama: @b_barang.nama, reorder_stok: @b_barang.reorder_stok, updated_by: @b_barang.updated_by }
    end

    assert_redirected_to b_barang_path(assigns(:b_barang))
  end

  test "should show b_barang" do
    get :show, id: @b_barang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_barang
    assert_response :success
  end

  test "should update b_barang" do
    put :update, id: @b_barang, b_barang: { id_department: @b_barang.id_department, id_golongan: @b_barang.id_golongan, id_level_five: @b_barang.id_level_five, id_level_four: @b_barang.id_level_four, id_satuan: @b_barang.id_satuan, id_type: @b_barang.id_type, kode: @b_barang.kode, max_stok: @b_barang.max_stok, min_stok: @b_barang.min_stok, nama: @b_barang.nama, reorder_stok: @b_barang.reorder_stok, updated_by: @b_barang.updated_by }
    assert_redirected_to b_barang_path(assigns(:b_barang))
  end

  test "should destroy b_barang" do
    assert_difference('BBarang.count', -1) do
      delete :destroy, id: @b_barang
    end

    assert_redirected_to b_barangs_path
  end
end
