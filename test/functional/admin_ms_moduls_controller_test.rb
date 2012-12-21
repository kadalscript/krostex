require 'test_helper'

class AdminMsModulsControllerTest < ActionController::TestCase
  setup do
    @admin_ms_modul = admin_ms_moduls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ms_moduls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ms_modul" do
    assert_difference('AdminMsModul.count') do
      post :create, admin_ms_modul: { appname: @admin_ms_modul.appname, buttongroup: @admin_ms_modul.buttongroup, id_modul: @admin_ms_modul.id_modul, kduser: @admin_ms_modul.kduser, keterangan: @admin_ms_modul.keterangan, modulname: @admin_ms_modul.modulname, nm_url1: @admin_ms_modul.nm_url1, nm_url2: @admin_ms_modul.nm_url2, nm_url: @admin_ms_modul.nm_url, status1: @admin_ms_modul.status1, tipemodul: @admin_ms_modul.tipemodul }
    end

    assert_redirected_to admin_ms_modul_path(assigns(:admin_ms_modul))
  end

  test "should show admin_ms_modul" do
    get :show, id: @admin_ms_modul
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ms_modul
    assert_response :success
  end

  test "should update admin_ms_modul" do
    put :update, id: @admin_ms_modul, admin_ms_modul: { appname: @admin_ms_modul.appname, buttongroup: @admin_ms_modul.buttongroup, id_modul: @admin_ms_modul.id_modul, kduser: @admin_ms_modul.kduser, keterangan: @admin_ms_modul.keterangan, modulname: @admin_ms_modul.modulname, nm_url1: @admin_ms_modul.nm_url1, nm_url2: @admin_ms_modul.nm_url2, nm_url: @admin_ms_modul.nm_url, status1: @admin_ms_modul.status1, tipemodul: @admin_ms_modul.tipemodul }
    assert_redirected_to admin_ms_modul_path(assigns(:admin_ms_modul))
  end

  test "should destroy admin_ms_modul" do
    assert_difference('AdminMsModul.count', -1) do
      delete :destroy, id: @admin_ms_modul
    end

    assert_redirected_to admin_ms_moduls_path
  end
end
