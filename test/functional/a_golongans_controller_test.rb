require 'test_helper'

class AGolongansControllerTest < ActionController::TestCase
  setup do
    @a_golongan = a_golongans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_golongans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_golongan" do
    assert_difference('AGolongan.count') do
      post :create, a_golongan: { id_department: @a_golongan.id_department, kode: @a_golongan.kode, nama: @a_golongan.nama, simbol: @a_golongan.simbol, updated_by: @a_golongan.updated_by }
    end

    assert_redirected_to a_golongan_path(assigns(:a_golongan))
  end

  test "should show a_golongan" do
    get :show, id: @a_golongan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_golongan
    assert_response :success
  end

  test "should update a_golongan" do
    put :update, id: @a_golongan, a_golongan: { id_department: @a_golongan.id_department, kode: @a_golongan.kode, nama: @a_golongan.nama, simbol: @a_golongan.simbol, updated_by: @a_golongan.updated_by }
    assert_redirected_to a_golongan_path(assigns(:a_golongan))
  end

  test "should destroy a_golongan" do
    assert_difference('AGolongan.count', -1) do
      delete :destroy, id: @a_golongan
    end

    assert_redirected_to a_golongans_path
  end
end
