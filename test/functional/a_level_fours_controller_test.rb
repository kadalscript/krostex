require 'test_helper'

class ALevelFoursControllerTest < ActionController::TestCase
  setup do
    @a_level_four = a_level_fours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_level_fours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_level_four" do
    assert_difference('ALevelFour.count') do
      post :create, a_level_four: { id_department: @a_level_four.id_department, id_golongan: @a_level_four.id_golongan, id_type: @a_level_four.id_type, kode: @a_level_four.kode, nama: @a_level_four.nama, simbol: @a_level_four.simbol, updated_by: @a_level_four.updated_by }
    end

    assert_redirected_to a_level_four_path(assigns(:a_level_four))
  end

  test "should show a_level_four" do
    get :show, id: @a_level_four
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_level_four
    assert_response :success
  end

  test "should update a_level_four" do
    put :update, id: @a_level_four, a_level_four: { id_department: @a_level_four.id_department, id_golongan: @a_level_four.id_golongan, id_type: @a_level_four.id_type, kode: @a_level_four.kode, nama: @a_level_four.nama, simbol: @a_level_four.simbol, updated_by: @a_level_four.updated_by }
    assert_redirected_to a_level_four_path(assigns(:a_level_four))
  end

  test "should destroy a_level_four" do
    assert_difference('ALevelFour.count', -1) do
      delete :destroy, id: @a_level_four
    end

    assert_redirected_to a_level_fours_path
  end
end
