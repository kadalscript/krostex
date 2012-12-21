require 'test_helper'

class AdminMsNavigasisControllerTest < ActionController::TestCase
  setup do
    @admin_ms_navigasi = admin_ms_navigasis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ms_navigasis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ms_navigasi" do
    assert_difference('AdminMsNavigasi.count') do
      post :create, admin_ms_navigasi: { id_navigasi: @admin_ms_navigasi.id_navigasi, nama_button: @admin_ms_navigasi.nama_button, nama_navigasi: @admin_ms_navigasi.nama_navigasi, status1: @admin_ms_navigasi.status1 }
    end

    assert_redirected_to admin_ms_navigasi_path(assigns(:admin_ms_navigasi))
  end

  test "should show admin_ms_navigasi" do
    get :show, id: @admin_ms_navigasi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ms_navigasi
    assert_response :success
  end

  test "should update admin_ms_navigasi" do
    put :update, id: @admin_ms_navigasi, admin_ms_navigasi: { id_navigasi: @admin_ms_navigasi.id_navigasi, nama_button: @admin_ms_navigasi.nama_button, nama_navigasi: @admin_ms_navigasi.nama_navigasi, status1: @admin_ms_navigasi.status1 }
    assert_redirected_to admin_ms_navigasi_path(assigns(:admin_ms_navigasi))
  end

  test "should destroy admin_ms_navigasi" do
    assert_difference('AdminMsNavigasi.count', -1) do
      delete :destroy, id: @admin_ms_navigasi
    end

    assert_redirected_to admin_ms_navigasis_path
  end
end
