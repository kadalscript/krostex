require 'test_helper'

class AdminMsUrlBacksControllerTest < ActionController::TestCase
  setup do
    @admin_ms_url_back = admin_ms_url_backs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ms_url_backs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ms_url_back" do
    assert_difference('AdminMsUrlBack.count') do
      post :create, admin_ms_url_back: { kode: @admin_ms_url_back.kode, url_back: @admin_ms_url_back.url_back }
    end

    assert_redirected_to admin_ms_url_back_path(assigns(:admin_ms_url_back))
  end

  test "should show admin_ms_url_back" do
    get :show, id: @admin_ms_url_back
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ms_url_back
    assert_response :success
  end

  test "should update admin_ms_url_back" do
    put :update, id: @admin_ms_url_back, admin_ms_url_back: { kode: @admin_ms_url_back.kode, url_back: @admin_ms_url_back.url_back }
    assert_redirected_to admin_ms_url_back_path(assigns(:admin_ms_url_back))
  end

  test "should destroy admin_ms_url_back" do
    assert_difference('AdminMsUrlBack.count', -1) do
      delete :destroy, id: @admin_ms_url_back
    end

    assert_redirected_to admin_ms_url_backs_path
  end
end
