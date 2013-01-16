class MWarehouseInFirstHsController < ApplicationController
  before_filter :get_miscellaneous

  @@title = 'bukti terima barang'
  @@table_name = MBeliPoFirstH.table_name

  def index
    @m_warehouse_in_first_hs = MWarehouseInFirstH.where(is_drafted: false).page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_warehouse_in_first_hs }
    end
  end

  def new
    @m_warehouse_in_first_h = MWarehouseInFirstH.new(tanggal: DateTime.now, is_drafted: true)

    respond_to do |format|
      if @m_warehouse_in_first_h.save
        format.html { redirect_to m_warehouse_in_first_h_draft_path(@m_warehouse_in_first_h) }
      end
    end
  end

  def draft
    @m_warehouse_in_first_h = MWarehouseInFirstH.find_by_id(params[:m_warehouse_in_first_h_id])
    @m_warehouse_in_second_ds = @m_warehouse_in_first_h.m_warehouse_in_second_ds.order('id')
    respond_to do |format|
      format.html
    end
  end

  def undraft
    respond_to do |format|
      format.html { redirect_to m_warehouse_in_first_hs_path }
    end
  end

  def modify_destroy_form
    @m_warehouse_in_first_h = MWarehouseInFirstH.find_by_id(params[:m_warehouse_in_first_h_id])
    @m_warehouse_in_second_d = MWarehouseInSecondD.find_by_id(params[:detail_id])

    respond_to do |format|
      format.js { render }
    end
  end

  def modify_edit_form
    @m_warehouse_in_first_h = MWarehouseInFirstH.find_by_id(params[:m_warehouse_in_first_h_id])
    @m_warehouse_in_second_d = MWarehouseInSecondD.find_by_id(params[:detail_id])
    
    respond_to do |format|
      format.js { render }
    end
  end

private

  def get_miscellaneous
    @title = @@title
    @column_titles = ["tanggal", "kode btb", "no ref", "status", "nama referensi"]
    @basic_columns = ["no", "kode barang", "nama barang", "qty", "satuan", "no lot", "harga"]
    @search_columns = @basic_columns + ["check"]
    @detailed_columns = @basic_columns + ["total", "nav"]
  end
end
