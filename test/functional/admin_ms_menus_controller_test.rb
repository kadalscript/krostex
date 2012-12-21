require 'test_helper'

class AdminMsMenusControllerTest < ActionController::TestCase
  setup do
    @admin_ms_menu = admin_ms_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ms_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ms_menu" do
    assert_difference('AdminMsMenu.count') do
      post :create, admin_ms_menu: { addparam: @admin_ms_menu.addparam, id_menu: @admin_ms_menu.id_menu, id_menuref: @admin_ms_menu.id_menuref, id_modul: @admin_ms_menu.id_modul, is_show_aplikasi: @admin_ms_menu.is_show_aplikasi, is_show_buku: @admin_ms_menu.is_show_buku, is_show_laporan: @admin_ms_menu.is_show_laporan, levelmenu: @admin_ms_menu.levelmenu, namamenu: @admin_ms_menu.namamenu, nolist: @admin_ms_menu.nolist, nourut: @admin_ms_menu.nourut, status1: @admin_ms_menu.status1, statusaplikasi: @admin_ms_menu.statusaplikasi }
    end

    assert_redirected_to admin_ms_menu_path(assigns(:admin_ms_menu))
  end

  test "should show admin_ms_menu" do
    get :show, id: @admin_ms_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ms_menu
    assert_response :success
  end

  test "should update admin_ms_menu" do
    put :update, id: @admin_ms_menu, admin_ms_menu: { addparam: @admin_ms_menu.addparam, id_menu: @admin_ms_menu.id_menu, id_menuref: @admin_ms_menu.id_menuref, id_modul: @admin_ms_menu.id_modul, is_show_aplikasi: @admin_ms_menu.is_show_aplikasi, is_show_buku: @admin_ms_menu.is_show_buku, is_show_laporan: @admin_ms_menu.is_show_laporan, levelmenu: @admin_ms_menu.levelmenu, namamenu: @admin_ms_menu.namamenu, nolist: @admin_ms_menu.nolist, nourut: @admin_ms_menu.nourut, status1: @admin_ms_menu.status1, statusaplikasi: @admin_ms_menu.statusaplikasi }
    assert_redirected_to admin_ms_menu_path(assigns(:admin_ms_menu))
  end

  test "should destroy admin_ms_menu" do
    assert_difference('AdminMsMenu.count', -1) do
      delete :destroy, id: @admin_ms_menu
    end

    assert_redirected_to admin_ms_menus_path
  end
end
