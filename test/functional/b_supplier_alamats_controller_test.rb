require 'test_helper'

class BSupplierAlamatsControllerTest < ActionController::TestCase
  setup do
    @b_supplier_alamat = b_supplier_alamats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_supplier_alamats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_supplier_alamat" do
    assert_difference('BSupplierAlamat.count') do
      post :create, b_supplier_alamat: { alamat_01: @b_supplier_alamat.alamat_01, alamat_02: @b_supplier_alamat.alamat_02, alamat_title: @b_supplier_alamat.alamat_title, b_supplier_id: @b_supplier_alamat.b_supplier_id, fax: @b_supplier_alamat.fax, id_kota: @b_supplier_alamat.id_kota, id_negara: @b_supplier_alamat.id_negara, id_provinsi: @b_supplier_alamat.id_provinsi, kode: @b_supplier_alamat.kode, kode_alamat: @b_supplier_alamat.kode_alamat, kode_kategori: @b_supplier_alamat.kode_kategori, kode_pos: @b_supplier_alamat.kode_pos, st_progress: @b_supplier_alamat.st_progress, status1: @b_supplier_alamat.status1, telepon: @b_supplier_alamat.telepon, updated_by: @b_supplier_alamat.updated_by }
    end

    assert_redirected_to b_supplier_alamat_path(assigns(:b_supplier_alamat))
  end

  test "should show b_supplier_alamat" do
    get :show, id: @b_supplier_alamat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_supplier_alamat
    assert_response :success
  end

  test "should update b_supplier_alamat" do
    put :update, id: @b_supplier_alamat, b_supplier_alamat: { alamat_01: @b_supplier_alamat.alamat_01, alamat_02: @b_supplier_alamat.alamat_02, alamat_title: @b_supplier_alamat.alamat_title, b_supplier_id: @b_supplier_alamat.b_supplier_id, fax: @b_supplier_alamat.fax, id_kota: @b_supplier_alamat.id_kota, id_negara: @b_supplier_alamat.id_negara, id_provinsi: @b_supplier_alamat.id_provinsi, kode: @b_supplier_alamat.kode, kode_alamat: @b_supplier_alamat.kode_alamat, kode_kategori: @b_supplier_alamat.kode_kategori, kode_pos: @b_supplier_alamat.kode_pos, st_progress: @b_supplier_alamat.st_progress, status1: @b_supplier_alamat.status1, telepon: @b_supplier_alamat.telepon, updated_by: @b_supplier_alamat.updated_by }
    assert_redirected_to b_supplier_alamat_path(assigns(:b_supplier_alamat))
  end

  test "should destroy b_supplier_alamat" do
    assert_difference('BSupplierAlamat.count', -1) do
      delete :destroy, id: @b_supplier_alamat
    end

    assert_redirected_to b_supplier_alamats_path
  end
end
