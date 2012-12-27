require 'test_helper'

class AKotaControllerTest < ActionController::TestCase
  setup do
    @a_kotum = a_kota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_kota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_kotum" do
    assert_difference('AKotum.count') do
      post :create, a_kotum: { id_negara: @a_kotum.id_negara, id_provinsi: @a_kotum.id_provinsi, kode: @a_kotum.kode, nama: @a_kotum.nama, simbol: @a_kotum.simbol, updated_by: @a_kotum.updated_by }
    end

    assert_redirected_to a_kotum_path(assigns(:a_kotum))
  end

  test "should show a_kotum" do
    get :show, id: @a_kotum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_kotum
    assert_response :success
  end

  test "should update a_kotum" do
    put :update, id: @a_kotum, a_kotum: { id_negara: @a_kotum.id_negara, id_provinsi: @a_kotum.id_provinsi, kode: @a_kotum.kode, nama: @a_kotum.nama, simbol: @a_kotum.simbol, updated_by: @a_kotum.updated_by }
    assert_redirected_to a_kotum_path(assigns(:a_kotum))
  end

  test "should destroy a_kotum" do
    assert_difference('AKotum.count', -1) do
      delete :destroy, id: @a_kotum
    end

    assert_redirected_to a_kota_path
  end
end
