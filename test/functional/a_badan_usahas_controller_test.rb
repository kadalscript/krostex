require 'test_helper'

class ABadanUsahasControllerTest < ActionController::TestCase
  setup do
    @a_badan_usaha = a_badan_usahas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_badan_usahas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_badan_usaha" do
    assert_difference('ABadanUsaha.count') do
      post :create, a_badan_usaha: { kode: @a_badan_usaha.kode, nama: @a_badan_usaha.nama, no_urut: @a_badan_usaha.no_urut, updated_by: @a_badan_usaha.updated_by }
    end

    assert_redirected_to a_badan_usaha_path(assigns(:a_badan_usaha))
  end

  test "should show a_badan_usaha" do
    get :show, id: @a_badan_usaha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_badan_usaha
    assert_response :success
  end

  test "should update a_badan_usaha" do
    put :update, id: @a_badan_usaha, a_badan_usaha: { kode: @a_badan_usaha.kode, nama: @a_badan_usaha.nama, no_urut: @a_badan_usaha.no_urut, updated_by: @a_badan_usaha.updated_by }
    assert_redirected_to a_badan_usaha_path(assigns(:a_badan_usaha))
  end

  test "should destroy a_badan_usaha" do
    assert_difference('ABadanUsaha.count', -1) do
      delete :destroy, id: @a_badan_usaha
    end

    assert_redirected_to a_badan_usahas_path
  end
end
