require 'test_helper'

class BSupplierAccountsControllerTest < ActionController::TestCase
  setup do
    @b_supplier_account = b_supplier_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_supplier_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_supplier_account" do
    assert_difference('BSupplierAccount.count') do
      post :create, b_supplier_account: { : @b_supplier_account., kode: @b_supplier_account.kode, kode_account: @b_supplier_account.kode_account, kode_bank: @b_supplier_account.kode_bank, nama_cabang: @b_supplier_account.nama_cabang, nama_pemilik: @b_supplier_account.nama_pemilik, st_progress: @b_supplier_account.st_progress, status1: @b_supplier_account.status1, updated_by: @b_supplier_account.updated_by }
    end

    assert_redirected_to b_supplier_account_path(assigns(:b_supplier_account))
  end

  test "should show b_supplier_account" do
    get :show, id: @b_supplier_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_supplier_account
    assert_response :success
  end

  test "should update b_supplier_account" do
    put :update, id: @b_supplier_account, b_supplier_account: { : @b_supplier_account., kode: @b_supplier_account.kode, kode_account: @b_supplier_account.kode_account, kode_bank: @b_supplier_account.kode_bank, nama_cabang: @b_supplier_account.nama_cabang, nama_pemilik: @b_supplier_account.nama_pemilik, st_progress: @b_supplier_account.st_progress, status1: @b_supplier_account.status1, updated_by: @b_supplier_account.updated_by }
    assert_redirected_to b_supplier_account_path(assigns(:b_supplier_account))
  end

  test "should destroy b_supplier_account" do
    assert_difference('BSupplierAccount.count', -1) do
      delete :destroy, id: @b_supplier_account
    end

    assert_redirected_to b_supplier_accounts_path
  end
end
