require 'test_helper'

class AdminMsModulNavigasisControllerTest < ActionController::TestCase
  setup do
    @admin_ms_modul_navigasi = admin_ms_modul_navigasis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ms_modul_navigasis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ms_modul_navigasi" do
    assert_difference('AdminMsModulNavigasi.count') do
      post :create, admin_ms_modul_navigasi: { id_modul: @admin_ms_modul_navigasi.id_modul, id_navigasi: @admin_ms_modul_navigasi.id_navigasi, is_level1: @admin_ms_modul_navigasi.is_level1, is_level2: @admin_ms_modul_navigasi.is_level2, is_level3: @admin_ms_modul_navigasi.is_level3 }
    end

    assert_redirected_to admin_ms_modul_navigasi_path(assigns(:admin_ms_modul_navigasi))
  end

  test "should show admin_ms_modul_navigasi" do
    get :show, id: @admin_ms_modul_navigasi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ms_modul_navigasi
    assert_response :success
  end

  test "should update admin_ms_modul_navigasi" do
    put :update, id: @admin_ms_modul_navigasi, admin_ms_modul_navigasi: { id_modul: @admin_ms_modul_navigasi.id_modul, id_navigasi: @admin_ms_modul_navigasi.id_navigasi, is_level1: @admin_ms_modul_navigasi.is_level1, is_level2: @admin_ms_modul_navigasi.is_level2, is_level3: @admin_ms_modul_navigasi.is_level3 }
    assert_redirected_to admin_ms_modul_navigasi_path(assigns(:admin_ms_modul_navigasi))
  end

  test "should destroy admin_ms_modul_navigasi" do
    assert_difference('AdminMsModulNavigasi.count', -1) do
      delete :destroy, id: @admin_ms_modul_navigasi
    end

    assert_redirected_to admin_ms_modul_navigasis_path
  end
end
