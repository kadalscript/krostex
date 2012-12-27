require 'test_helper'

class ANegarasControllerTest < ActionController::TestCase
  setup do
    @a_negara = a_negaras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_negaras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_negara" do
    assert_difference('ANegara.count') do
      post :create, a_negara: { kode: @a_negara.kode, nama: @a_negara.nama, simbol: @a_negara.simbol, updated_by: @a_negara.updated_by }
    end

    assert_redirected_to a_negara_path(assigns(:a_negara))
  end

  test "should show a_negara" do
    get :show, id: @a_negara
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_negara
    assert_response :success
  end

  test "should update a_negara" do
    put :update, id: @a_negara, a_negara: { kode: @a_negara.kode, nama: @a_negara.nama, simbol: @a_negara.simbol, updated_by: @a_negara.updated_by }
    assert_redirected_to a_negara_path(assigns(:a_negara))
  end

  test "should destroy a_negara" do
    assert_difference('ANegara.count', -1) do
      delete :destroy, id: @a_negara
    end

    assert_redirected_to a_negaras_path
  end
end
