require 'test_helper'

class AdminMsMenuGroupsControllerTest < ActionController::TestCase
  setup do
    @admin_ms_menu_group = admin_ms_menu_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ms_menu_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ms_menu_group" do
    assert_difference('AdminMsMenuGroup.count') do
      post :create, admin_ms_menu_group: { id_group: @admin_ms_menu_group.id_group, id_menu: @admin_ms_menu_group.id_menu, id_product: @admin_ms_menu_group.id_product, statusmenu: @admin_ms_menu_group.statusmenu }
    end

    assert_redirected_to admin_ms_menu_group_path(assigns(:admin_ms_menu_group))
  end

  test "should show admin_ms_menu_group" do
    get :show, id: @admin_ms_menu_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ms_menu_group
    assert_response :success
  end

  test "should update admin_ms_menu_group" do
    put :update, id: @admin_ms_menu_group, admin_ms_menu_group: { id_group: @admin_ms_menu_group.id_group, id_menu: @admin_ms_menu_group.id_menu, id_product: @admin_ms_menu_group.id_product, statusmenu: @admin_ms_menu_group.statusmenu }
    assert_redirected_to admin_ms_menu_group_path(assigns(:admin_ms_menu_group))
  end

  test "should destroy admin_ms_menu_group" do
    assert_difference('AdminMsMenuGroup.count', -1) do
      delete :destroy, id: @admin_ms_menu_group
    end

    assert_redirected_to admin_ms_menu_groups_path
  end
end
