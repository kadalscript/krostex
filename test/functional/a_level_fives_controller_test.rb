require 'test_helper'

class ALevelFivesControllerTest < ActionController::TestCase
  setup do
    @a_level_fife = a_level_fives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_level_fives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_level_fife" do
    assert_difference('ALevelFive.count') do
      post :create, a_level_fife: { id_department: @a_level_fife.id_department, id_golongan: @a_level_fife.id_golongan, id_level_four: @a_level_fife.id_level_four, id_type: @a_level_fife.id_type, kode: @a_level_fife.kode, nama: @a_level_fife.nama, simbol: @a_level_fife.simbol, updated_by: @a_level_fife.updated_by }
    end

    assert_redirected_to a_level_fife_path(assigns(:a_level_fife))
  end

  test "should show a_level_fife" do
    get :show, id: @a_level_fife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_level_fife
    assert_response :success
  end

  test "should update a_level_fife" do
    put :update, id: @a_level_fife, a_level_fife: { id_department: @a_level_fife.id_department, id_golongan: @a_level_fife.id_golongan, id_level_four: @a_level_fife.id_level_four, id_type: @a_level_fife.id_type, kode: @a_level_fife.kode, nama: @a_level_fife.nama, simbol: @a_level_fife.simbol, updated_by: @a_level_fife.updated_by }
    assert_redirected_to a_level_fife_path(assigns(:a_level_fife))
  end

  test "should destroy a_level_fife" do
    assert_difference('ALevelFive.count', -1) do
      delete :destroy, id: @a_level_fife
    end

    assert_redirected_to a_level_fives_path
  end
end
