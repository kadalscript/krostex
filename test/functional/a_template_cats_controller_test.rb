require 'test_helper'

class ATemplateCatsControllerTest < ActionController::TestCase
  setup do
    @a_template_cat = a_template_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_template_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_template_cat" do
    assert_difference('ATemplateCat.count') do
      post :create, a_template_cat: { kategori: @a_template_cat.kategori, kode: @a_template_cat.kode, nama: @a_template_cat.nama, simbol: @a_template_cat.simbol, st_progress: @a_template_cat.st_progress, status1: @a_template_cat.status1, updated_by: @a_template_cat.updated_by }
    end

    assert_redirected_to a_template_cat_path(assigns(:a_template_cat))
  end

  test "should show a_template_cat" do
    get :show, id: @a_template_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_template_cat
    assert_response :success
  end

  test "should update a_template_cat" do
    put :update, id: @a_template_cat, a_template_cat: { kategori: @a_template_cat.kategori, kode: @a_template_cat.kode, nama: @a_template_cat.nama, simbol: @a_template_cat.simbol, st_progress: @a_template_cat.st_progress, status1: @a_template_cat.status1, updated_by: @a_template_cat.updated_by }
    assert_redirected_to a_template_cat_path(assigns(:a_template_cat))
  end

  test "should destroy a_template_cat" do
    assert_difference('ATemplateCat.count', -1) do
      delete :destroy, id: @a_template_cat
    end

    assert_redirected_to a_template_cats_path
  end
end
