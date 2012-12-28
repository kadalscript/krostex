require 'test_helper'

class ATypesControllerTest < ActionController::TestCase
  setup do
    @a_type = a_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_type" do
    assert_difference('AType.count') do
      post :create, a_type: { id_department: @a_type.id_department, id_golongan: @a_type.id_golongan, kode: @a_type.kode, nama: @a_type.nama, simbol: @a_type.simbol, updated_by: @a_type.updated_by }
    end

    assert_redirected_to a_type_path(assigns(:a_type))
  end

  test "should show a_type" do
    get :show, id: @a_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_type
    assert_response :success
  end

  test "should update a_type" do
    put :update, id: @a_type, a_type: { id_department: @a_type.id_department, id_golongan: @a_type.id_golongan, kode: @a_type.kode, nama: @a_type.nama, simbol: @a_type.simbol, updated_by: @a_type.updated_by }
    assert_redirected_to a_type_path(assigns(:a_type))
  end

  test "should destroy a_type" do
    assert_difference('AType.count', -1) do
      delete :destroy, id: @a_type
    end

    assert_redirected_to a_types_path
  end
end
