require 'test_helper'

class ASatuansControllerTest < ActionController::TestCase
  setup do
    @a_satuan = a_satuans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_satuans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_satuan" do
    assert_difference('ASatuan.count') do
      post :create, a_satuan: { nama: @a_satuan.nama, no_urut: @a_satuan.no_urut, simbol: @a_satuan.simbol, updated_by: @a_satuan.updated_by }
    end

    assert_redirected_to a_satuan_path(assigns(:a_satuan))
  end

  test "should show a_satuan" do
    get :show, id: @a_satuan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_satuan
    assert_response :success
  end

  test "should update a_satuan" do
    put :update, id: @a_satuan, a_satuan: { nama: @a_satuan.nama, no_urut: @a_satuan.no_urut, simbol: @a_satuan.simbol, updated_by: @a_satuan.updated_by }
    assert_redirected_to a_satuan_path(assigns(:a_satuan))
  end

  test "should destroy a_satuan" do
    assert_difference('ASatuan.count', -1) do
      delete :destroy, id: @a_satuan
    end

    assert_redirected_to a_satuans_path
  end
end
