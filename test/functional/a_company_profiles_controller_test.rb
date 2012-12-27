require 'test_helper'

class ACompanyProfilesControllerTest < ActionController::TestCase
  setup do
    @a_company_profile = a_company_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_company_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_company_profile" do
    assert_difference('ACompanyProfile.count') do
      post :create, a_company_profile: { alamat_01: @a_company_profile.alamat_01, alamat_02: @a_company_profile.alamat_02, alamat_03: @a_company_profile.alamat_03, alamat_title: @a_company_profile.alamat_title, contact_person: @a_company_profile.contact_person, email: @a_company_profile.email, fax: @a_company_profile.fax, homepage: @a_company_profile.homepage, kode: @a_company_profile.kode, nama_company: @a_company_profile.nama_company, telepon: @a_company_profile.telepon }
    end

    assert_redirected_to a_company_profile_path(assigns(:a_company_profile))
  end

  test "should show a_company_profile" do
    get :show, id: @a_company_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_company_profile
    assert_response :success
  end

  test "should update a_company_profile" do
    put :update, id: @a_company_profile, a_company_profile: { alamat_01: @a_company_profile.alamat_01, alamat_02: @a_company_profile.alamat_02, alamat_03: @a_company_profile.alamat_03, alamat_title: @a_company_profile.alamat_title, contact_person: @a_company_profile.contact_person, email: @a_company_profile.email, fax: @a_company_profile.fax, homepage: @a_company_profile.homepage, kode: @a_company_profile.kode, nama_company: @a_company_profile.nama_company, telepon: @a_company_profile.telepon }
    assert_redirected_to a_company_profile_path(assigns(:a_company_profile))
  end

  test "should destroy a_company_profile" do
    assert_difference('ACompanyProfile.count', -1) do
      delete :destroy, id: @a_company_profile
    end

    assert_redirected_to a_company_profiles_path
  end
end
