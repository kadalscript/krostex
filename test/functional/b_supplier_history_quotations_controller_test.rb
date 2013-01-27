require 'test_helper'

class BSupplierHistoryQuotationsControllerTest < ActionController::TestCase
  setup do
    @b_supplier_history_quotation = b_supplier_history_quotations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_supplier_history_quotations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_supplier_history_quotation" do
    assert_difference('BSupplierHistoryQuotation.count') do
      post :create, b_supplier_history_quotation: { : @b_supplier_history_quotation., kode: @b_supplier_history_quotation.kode, kode_brg: @b_supplier_history_quotation.kode_brg, kode_brg_ext: @b_supplier_history_quotation.kode_brg_ext, penawaran_harga_1: @b_supplier_history_quotation.penawaran_harga_1, penawaran_harga_2: @b_supplier_history_quotation.penawaran_harga_2, penawaran_harga_3: @b_supplier_history_quotation.penawaran_harga_3, penawaran_harga_4: @b_supplier_history_quotation.penawaran_harga_4, penawaran_harga_cur: @b_supplier_history_quotation.penawaran_harga_cur, penawaran_kode_1: @b_supplier_history_quotation.penawaran_kode_1, penawaran_kode_2: @b_supplier_history_quotation.penawaran_kode_2, penawaran_kode_3: @b_supplier_history_quotation.penawaran_kode_3, penawaran_kode_4: @b_supplier_history_quotation.penawaran_kode_4, penawaran_kode_cur: @b_supplier_history_quotation.penawaran_kode_cur, penawaran_kode_satuan_1: @b_supplier_history_quotation.penawaran_kode_satuan_1, penawaran_kode_satuan_2: @b_supplier_history_quotation.penawaran_kode_satuan_2, penawaran_kode_satuan_3: @b_supplier_history_quotation.penawaran_kode_satuan_3, penawaran_kode_satuan_4: @b_supplier_history_quotation.penawaran_kode_satuan_4, penawaran_kode_satuan_cur: @b_supplier_history_quotation.penawaran_kode_satuan_cur, penawaran_kode_valuta_1: @b_supplier_history_quotation.penawaran_kode_valuta_1, penawaran_kode_valuta_2: @b_supplier_history_quotation.penawaran_kode_valuta_2, penawaran_kode_valuta_3: @b_supplier_history_quotation.penawaran_kode_valuta_3, penawaran_kode_valuta_4: @b_supplier_history_quotation.penawaran_kode_valuta_4, penawaran_kode_valuta_cur: @b_supplier_history_quotation.penawaran_kode_valuta_cur, penawaran_min_order_1: @b_supplier_history_quotation.penawaran_min_order_1, penawaran_min_order_2: @b_supplier_history_quotation.penawaran_min_order_2, penawaran_min_order_3: @b_supplier_history_quotation.penawaran_min_order_3, penawaran_min_order_4: @b_supplier_history_quotation.penawaran_min_order_4, penawaran_min_order_cur: @b_supplier_history_quotation.penawaran_min_order_cur, penawaran_tgl_1: @b_supplier_history_quotation.penawaran_tgl_1, penawaran_tgl_2: @b_supplier_history_quotation.penawaran_tgl_2, penawaran_tgl_3: @b_supplier_history_quotation.penawaran_tgl_3, penawaran_tgl_4: @b_supplier_history_quotation.penawaran_tgl_4, penawaran_tgl_cur: @b_supplier_history_quotation.penawaran_tgl_cur, penawaran_waktu_kirim_1: @b_supplier_history_quotation.penawaran_waktu_kirim_1, penawaran_waktu_kirim_2: @b_supplier_history_quotation.penawaran_waktu_kirim_2, penawaran_waktu_kirim_3: @b_supplier_history_quotation.penawaran_waktu_kirim_3, penawaran_waktu_kirim_4: @b_supplier_history_quotation.penawaran_waktu_kirim_4, penawaran_waktu_kirim_cur: @b_supplier_history_quotation.penawaran_waktu_kirim_cur, pos_penawaran_x: @b_supplier_history_quotation.pos_penawaran_x, st_progress: @b_supplier_history_quotation.st_progress, status1: @b_supplier_history_quotation.status1, updated_by: @b_supplier_history_quotation.updated_by }
    end

    assert_redirected_to b_supplier_history_quotation_path(assigns(:b_supplier_history_quotation))
  end

  test "should show b_supplier_history_quotation" do
    get :show, id: @b_supplier_history_quotation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_supplier_history_quotation
    assert_response :success
  end

  test "should update b_supplier_history_quotation" do
    put :update, id: @b_supplier_history_quotation, b_supplier_history_quotation: { : @b_supplier_history_quotation., kode: @b_supplier_history_quotation.kode, kode_brg: @b_supplier_history_quotation.kode_brg, kode_brg_ext: @b_supplier_history_quotation.kode_brg_ext, penawaran_harga_1: @b_supplier_history_quotation.penawaran_harga_1, penawaran_harga_2: @b_supplier_history_quotation.penawaran_harga_2, penawaran_harga_3: @b_supplier_history_quotation.penawaran_harga_3, penawaran_harga_4: @b_supplier_history_quotation.penawaran_harga_4, penawaran_harga_cur: @b_supplier_history_quotation.penawaran_harga_cur, penawaran_kode_1: @b_supplier_history_quotation.penawaran_kode_1, penawaran_kode_2: @b_supplier_history_quotation.penawaran_kode_2, penawaran_kode_3: @b_supplier_history_quotation.penawaran_kode_3, penawaran_kode_4: @b_supplier_history_quotation.penawaran_kode_4, penawaran_kode_cur: @b_supplier_history_quotation.penawaran_kode_cur, penawaran_kode_satuan_1: @b_supplier_history_quotation.penawaran_kode_satuan_1, penawaran_kode_satuan_2: @b_supplier_history_quotation.penawaran_kode_satuan_2, penawaran_kode_satuan_3: @b_supplier_history_quotation.penawaran_kode_satuan_3, penawaran_kode_satuan_4: @b_supplier_history_quotation.penawaran_kode_satuan_4, penawaran_kode_satuan_cur: @b_supplier_history_quotation.penawaran_kode_satuan_cur, penawaran_kode_valuta_1: @b_supplier_history_quotation.penawaran_kode_valuta_1, penawaran_kode_valuta_2: @b_supplier_history_quotation.penawaran_kode_valuta_2, penawaran_kode_valuta_3: @b_supplier_history_quotation.penawaran_kode_valuta_3, penawaran_kode_valuta_4: @b_supplier_history_quotation.penawaran_kode_valuta_4, penawaran_kode_valuta_cur: @b_supplier_history_quotation.penawaran_kode_valuta_cur, penawaran_min_order_1: @b_supplier_history_quotation.penawaran_min_order_1, penawaran_min_order_2: @b_supplier_history_quotation.penawaran_min_order_2, penawaran_min_order_3: @b_supplier_history_quotation.penawaran_min_order_3, penawaran_min_order_4: @b_supplier_history_quotation.penawaran_min_order_4, penawaran_min_order_cur: @b_supplier_history_quotation.penawaran_min_order_cur, penawaran_tgl_1: @b_supplier_history_quotation.penawaran_tgl_1, penawaran_tgl_2: @b_supplier_history_quotation.penawaran_tgl_2, penawaran_tgl_3: @b_supplier_history_quotation.penawaran_tgl_3, penawaran_tgl_4: @b_supplier_history_quotation.penawaran_tgl_4, penawaran_tgl_cur: @b_supplier_history_quotation.penawaran_tgl_cur, penawaran_waktu_kirim_1: @b_supplier_history_quotation.penawaran_waktu_kirim_1, penawaran_waktu_kirim_2: @b_supplier_history_quotation.penawaran_waktu_kirim_2, penawaran_waktu_kirim_3: @b_supplier_history_quotation.penawaran_waktu_kirim_3, penawaran_waktu_kirim_4: @b_supplier_history_quotation.penawaran_waktu_kirim_4, penawaran_waktu_kirim_cur: @b_supplier_history_quotation.penawaran_waktu_kirim_cur, pos_penawaran_x: @b_supplier_history_quotation.pos_penawaran_x, st_progress: @b_supplier_history_quotation.st_progress, status1: @b_supplier_history_quotation.status1, updated_by: @b_supplier_history_quotation.updated_by }
    assert_redirected_to b_supplier_history_quotation_path(assigns(:b_supplier_history_quotation))
  end

  test "should destroy b_supplier_history_quotation" do
    assert_difference('BSupplierHistoryQuotation.count', -1) do
      delete :destroy, id: @b_supplier_history_quotation
    end

    assert_redirected_to b_supplier_history_quotations_path
  end
end
