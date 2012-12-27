require 'test_helper'

class AProvinsisControllerTest < ActionController::TestCase
  setup do
    @a_provinsi = a_provinsis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_provinsis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_provinsi" do
    assert_difference('AProvinsi.count') do
      post :create, a_provinsi: { id_negara: @a_provinsi.id_negara, kode: @a_provinsi.kode, nama: @a_provinsi.nama, simbol: @a_provinsi.simbol, updated_by: @a_provinsi.updated_by }
    end

    assert_redirected_to a_provinsi_path(assigns(:a_provinsi))
  end

  test "should show a_provinsi" do
    get :show, id: @a_provinsi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_provinsi
    assert_response :success
  end

  test "should update a_provinsi" do
    put :update, id: @a_provinsi, a_provinsi: { id_negara: @a_provinsi.id_negara, kode: @a_provinsi.kode, nama: @a_provinsi.nama, simbol: @a_provinsi.simbol, updated_by: @a_provinsi.updated_by }
    assert_redirected_to a_provinsi_path(assigns(:a_provinsi))
  end

  test "should destroy a_provinsi" do
    assert_difference('AProvinsi.count', -1) do
      delete :destroy, id: @a_provinsi
    end

    assert_redirected_to a_provinsis_path
  end
end
