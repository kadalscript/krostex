require 'test_helper'

class ASettingProgramsControllerTest < ActionController::TestCase
  setup do
    @a_setting_program = a_setting_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_setting_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_setting_program" do
    assert_difference('ASettingProgram.count') do
      post :create, a_setting_program: { id_company: @a_setting_program.id_company, id_gudang: @a_setting_program.id_gudang }
    end

    assert_redirected_to a_setting_program_path(assigns(:a_setting_program))
  end

  test "should show a_setting_program" do
    get :show, id: @a_setting_program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_setting_program
    assert_response :success
  end

  test "should update a_setting_program" do
    put :update, id: @a_setting_program, a_setting_program: { id_company: @a_setting_program.id_company, id_gudang: @a_setting_program.id_gudang }
    assert_redirected_to a_setting_program_path(assigns(:a_setting_program))
  end

  test "should destroy a_setting_program" do
    assert_difference('ASettingProgram.count', -1) do
      delete :destroy, id: @a_setting_program
    end

    assert_redirected_to a_setting_programs_path
  end
end
