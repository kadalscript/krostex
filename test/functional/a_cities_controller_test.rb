require 'test_helper'

class ACitiesControllerTest < ActionController::TestCase
  setup do
    @a_city = a_cities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_cities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_city" do
    assert_difference('ACity.count') do
      post :create, a_city: { id_negara: @a_city.id_negara, id_provinsi: @a_city.id_provinsi, kode: @a_city.kode, nama: @a_city.nama, simbol: @a_city.simbol, updated_by: @a_city.updated_by }
    end

    assert_redirected_to a_city_path(assigns(:a_city))
  end

  test "should show a_city" do
    get :show, id: @a_city
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_city
    assert_response :success
  end

  test "should update a_city" do
    put :update, id: @a_city, a_city: { id_negara: @a_city.id_negara, id_provinsi: @a_city.id_provinsi, kode: @a_city.kode, nama: @a_city.nama, simbol: @a_city.simbol, updated_by: @a_city.updated_by }
    assert_redirected_to a_city_path(assigns(:a_city))
  end

  test "should destroy a_city" do
    assert_difference('ACity.count', -1) do
      delete :destroy, id: @a_city
    end

    assert_redirected_to a_cities_path
  end
end
