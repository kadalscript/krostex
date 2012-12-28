require 'test_helper'

class BSuppliersControllerTest < ActionController::TestCase
  setup do
    @b_supplier = b_suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_supplier" do
    assert_difference('BSupplier.count') do
      post :create, b_supplier: { email: @b_supplier.email, homepage: @b_supplier.homepage, id_badan_usaha: @b_supplier.id_badan_usaha, kode: @b_supplier.kode, nama: @b_supplier.nama, st_progress: @b_supplier.st_progress, status1: @b_supplier.status1, updated_by: @b_supplier.updated_by }
    end

    assert_redirected_to b_supplier_path(assigns(:b_supplier))
  end

  test "should show b_supplier" do
    get :show, id: @b_supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_supplier
    assert_response :success
  end

  test "should update b_supplier" do
    put :update, id: @b_supplier, b_supplier: { email: @b_supplier.email, homepage: @b_supplier.homepage, id_badan_usaha: @b_supplier.id_badan_usaha, kode: @b_supplier.kode, nama: @b_supplier.nama, st_progress: @b_supplier.st_progress, status1: @b_supplier.status1, updated_by: @b_supplier.updated_by }
    assert_redirected_to b_supplier_path(assigns(:b_supplier))
  end

  test "should destroy b_supplier" do
    assert_difference('BSupplier.count', -1) do
      delete :destroy, id: @b_supplier
    end

    assert_redirected_to b_suppliers_path
  end
end
