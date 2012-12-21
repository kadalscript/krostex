require 'test_helper'

class AGudangsControllerTest < ActionController::TestCase
  setup do
    @a_gudang = a_gudangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_gudangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_gudang" do
    assert_difference('AGudang.count') do
      post :create, a_gudang: { nama: @a_gudang.nama, simbol: @a_gudang.simbol, st_progress: @a_gudang.st_progress, status1: @a_gudang.status1, update_by: @a_gudang.update_by }
    end

    assert_redirected_to a_gudang_path(assigns(:a_gudang))
  end

  test "should show a_gudang" do
    get :show, id: @a_gudang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_gudang
    assert_response :success
  end

  test "should update a_gudang" do
    put :update, id: @a_gudang, a_gudang: { nama: @a_gudang.nama, simbol: @a_gudang.simbol, st_progress: @a_gudang.st_progress, status1: @a_gudang.status1, update_by: @a_gudang.update_by }
    assert_redirected_to a_gudang_path(assigns(:a_gudang))
  end

  test "should destroy a_gudang" do
    assert_difference('AGudang.count', -1) do
      delete :destroy, id: @a_gudang
    end

    assert_redirected_to a_gudangs_path
  end
end
