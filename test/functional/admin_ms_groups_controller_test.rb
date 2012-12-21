require 'test_helper'

class AdminMsGroupsControllerTest < ActionController::TestCase
  setup do
    @admin_ms_group = admin_ms_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ms_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ms_group" do
    assert_difference('AdminMsGroup.count') do
      post :create, admin_ms_group: { id_group: @admin_ms_group.id_group, id_group_parent: @admin_ms_group.id_group_parent, id_product: @admin_ms_group.id_product, kduser: @admin_ms_group.kduser, namagroup: @admin_ms_group.namagroup, statusgroup: @admin_ms_group.statusgroup, viewadmin: @admin_ms_group.viewadmin }
    end

    assert_redirected_to admin_ms_group_path(assigns(:admin_ms_group))
  end

  test "should show admin_ms_group" do
    get :show, id: @admin_ms_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ms_group
    assert_response :success
  end

  test "should update admin_ms_group" do
    put :update, id: @admin_ms_group, admin_ms_group: { id_group: @admin_ms_group.id_group, id_group_parent: @admin_ms_group.id_group_parent, id_product: @admin_ms_group.id_product, kduser: @admin_ms_group.kduser, namagroup: @admin_ms_group.namagroup, statusgroup: @admin_ms_group.statusgroup, viewadmin: @admin_ms_group.viewadmin }
    assert_redirected_to admin_ms_group_path(assigns(:admin_ms_group))
  end

  test "should destroy admin_ms_group" do
    assert_difference('AdminMsGroup.count', -1) do
      delete :destroy, id: @admin_ms_group
    end

    assert_redirected_to admin_ms_groups_path
  end
end
