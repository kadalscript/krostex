require 'test_helper'

class AKemasansControllerTest < ActionController::TestCase
  setup do
    @a_kemasan = a_kemasans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_kemasans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_kemasan" do
    assert_difference('AKemasan.count') do
      post :create, a_kemasan: { id_satuan: @a_kemasan.id_satuan, isi_volume: @a_kemasan.isi_volume, kode: @a_kemasan.kode, nama: @a_kemasan.nama, updated_by: @a_kemasan.updated_by }
    end

    assert_redirected_to a_kemasan_path(assigns(:a_kemasan))
  end

  test "should show a_kemasan" do
    get :show, id: @a_kemasan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_kemasan
    assert_response :success
  end

  test "should update a_kemasan" do
    put :update, id: @a_kemasan, a_kemasan: { id_satuan: @a_kemasan.id_satuan, isi_volume: @a_kemasan.isi_volume, kode: @a_kemasan.kode, nama: @a_kemasan.nama, updated_by: @a_kemasan.updated_by }
    assert_redirected_to a_kemasan_path(assigns(:a_kemasan))
  end

  test "should destroy a_kemasan" do
    assert_difference('AKemasan.count', -1) do
      delete :destroy, id: @a_kemasan
    end

    assert_redirected_to a_kemasans_path
  end
end
