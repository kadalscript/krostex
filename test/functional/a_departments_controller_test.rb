require 'test_helper'

class ADepartmentsControllerTest < ActionController::TestCase
  setup do
    @a_department = a_departments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_department" do
    assert_difference('ADepartment.count') do
      post :create, a_department: { kode: @a_department.kode, nama: @a_department.nama, simbol: @a_department.simbol, updated_by: @a_department.updated_by }
    end

    assert_redirected_to a_department_path(assigns(:a_department))
  end

  test "should show a_department" do
    get :show, id: @a_department
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_department
    assert_response :success
  end

  test "should update a_department" do
    put :update, id: @a_department, a_department: { kode: @a_department.kode, nama: @a_department.nama, simbol: @a_department.simbol, updated_by: @a_department.updated_by }
    assert_redirected_to a_department_path(assigns(:a_department))
  end

  test "should destroy a_department" do
    assert_difference('ADepartment.count', -1) do
      delete :destroy, id: @a_department
    end

    assert_redirected_to a_departments_path
  end
end
