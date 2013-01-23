require 'test_helper'

class ABanksControllerTest < ActionController::TestCase
  setup do
    @a_bank = a_banks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_banks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_bank" do
    assert_difference('ABank.count') do
      post :create, a_bank: { : @a_bank., kode: @a_bank.kode, nama: @a_bank.nama, simbol: @a_bank.simbol, st_progress: @a_bank.st_progress, status1: @a_bank.status1, updated_by: @a_bank.updated_by }
    end

    assert_redirected_to a_bank_path(assigns(:a_bank))
  end

  test "should show a_bank" do
    get :show, id: @a_bank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_bank
    assert_response :success
  end

  test "should update a_bank" do
    put :update, id: @a_bank, a_bank: { : @a_bank., kode: @a_bank.kode, nama: @a_bank.nama, simbol: @a_bank.simbol, st_progress: @a_bank.st_progress, status1: @a_bank.status1, updated_by: @a_bank.updated_by }
    assert_redirected_to a_bank_path(assigns(:a_bank))
  end

  test "should destroy a_bank" do
    assert_difference('ABank.count', -1) do
      delete :destroy, id: @a_bank
    end

    assert_redirected_to a_banks_path
  end
end
