require 'test_helper'

class AMataUangsControllerTest < ActionController::TestCase
  setup do
    @a_mata_uang = a_mata_uangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_mata_uangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_mata_uang" do
    assert_difference('AMataUang.count') do
      post :create, a_mata_uang: { kode: @a_mata_uang.kode, nama: @a_mata_uang.nama, no_urut: @a_mata_uang.no_urut, simbol: @a_mata_uang.simbol, updated_by: @a_mata_uang.updated_by }
    end

    assert_redirected_to a_mata_uang_path(assigns(:a_mata_uang))
  end

  test "should show a_mata_uang" do
    get :show, id: @a_mata_uang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_mata_uang
    assert_response :success
  end

  test "should update a_mata_uang" do
    put :update, id: @a_mata_uang, a_mata_uang: { kode: @a_mata_uang.kode, nama: @a_mata_uang.nama, no_urut: @a_mata_uang.no_urut, simbol: @a_mata_uang.simbol, updated_by: @a_mata_uang.updated_by }
    assert_redirected_to a_mata_uang_path(assigns(:a_mata_uang))
  end

  test "should destroy a_mata_uang" do
    assert_difference('AMataUang.count', -1) do
      delete :destroy, id: @a_mata_uang
    end

    assert_redirected_to a_mata_uangs_path
  end
end
