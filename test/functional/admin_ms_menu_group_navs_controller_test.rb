require 'test_helper'

class AdminMsMenuGroupNavsControllerTest < ActionController::TestCase
  setup do
    @admin_ms_menu_group_nav = admin_ms_menu_group_navs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ms_menu_group_navs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ms_menu_group_nav" do
    assert_difference('AdminMsMenuGroupNav.count') do
      post :create, admin_ms_menu_group_nav: { id_group: @admin_ms_menu_group_nav.id_group, id_menu: @admin_ms_menu_group_nav.id_menu, id_navigasi: @admin_ms_menu_group_nav.id_navigasi }
    end

    assert_redirected_to admin_ms_menu_group_nav_path(assigns(:admin_ms_menu_group_nav))
  end

  test "should show admin_ms_menu_group_nav" do
    get :show, id: @admin_ms_menu_group_nav
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ms_menu_group_nav
    assert_response :success
  end

  test "should update admin_ms_menu_group_nav" do
    put :update, id: @admin_ms_menu_group_nav, admin_ms_menu_group_nav: { id_group: @admin_ms_menu_group_nav.id_group, id_menu: @admin_ms_menu_group_nav.id_menu, id_navigasi: @admin_ms_menu_group_nav.id_navigasi }
    assert_redirected_to admin_ms_menu_group_nav_path(assigns(:admin_ms_menu_group_nav))
  end

  test "should destroy admin_ms_menu_group_nav" do
    assert_difference('AdminMsMenuGroupNav.count', -1) do
      delete :destroy, id: @admin_ms_menu_group_nav
    end

    assert_redirected_to admin_ms_menu_group_navs_path
  end
end
