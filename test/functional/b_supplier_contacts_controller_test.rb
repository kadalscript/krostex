require 'test_helper'

class BSupplierContactsControllerTest < ActionController::TestCase
  setup do
    @b_supplier_contact = b_supplier_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_supplier_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_supplier_contact" do
    assert_difference('BSupplierContact.count') do
      post :create, b_supplier_contact: { : @b_supplier_contact., email: @b_supplier_contact.email, handphone: @b_supplier_contact.handphone, kode: @b_supplier_contact.kode, kode_contact: @b_supplier_contact.kode_contact, kode_kategori: @b_supplier_contact.kode_kategori, nama: @b_supplier_contact.nama, nama_lengkap: @b_supplier_contact.nama_lengkap, status1: @b_supplier_contact.status1, string: @b_supplier_contact.string, telepon: @b_supplier_contact.telepon, telepon: @b_supplier_contact.telepon, tgl_lahir: @b_supplier_contact.tgl_lahir, updated_by: @b_supplier_contact.updated_by }
    end

    assert_redirected_to b_supplier_contact_path(assigns(:b_supplier_contact))
  end

  test "should show b_supplier_contact" do
    get :show, id: @b_supplier_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_supplier_contact
    assert_response :success
  end

  test "should update b_supplier_contact" do
    put :update, id: @b_supplier_contact, b_supplier_contact: { : @b_supplier_contact., email: @b_supplier_contact.email, handphone: @b_supplier_contact.handphone, kode: @b_supplier_contact.kode, kode_contact: @b_supplier_contact.kode_contact, kode_kategori: @b_supplier_contact.kode_kategori, nama: @b_supplier_contact.nama, nama_lengkap: @b_supplier_contact.nama_lengkap, status1: @b_supplier_contact.status1, string: @b_supplier_contact.string, telepon: @b_supplier_contact.telepon, telepon: @b_supplier_contact.telepon, tgl_lahir: @b_supplier_contact.tgl_lahir, updated_by: @b_supplier_contact.updated_by }
    assert_redirected_to b_supplier_contact_path(assigns(:b_supplier_contact))
  end

  test "should destroy b_supplier_contact" do
    assert_difference('BSupplierContact.count', -1) do
      delete :destroy, id: @b_supplier_contact
    end

    assert_redirected_to b_supplier_contacts_path
  end
end
