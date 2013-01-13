class MWarehouseInFirstHsController < ApplicationController
  before_filter :get_miscellaneous

  @@title = 'bukti terima barang'
  @@table_name = MBeliPoFirstH.table_name

  def index
    @m_warehouse_in_first_hs = MWarehouseInFirstH.page(params[:page]).per(5).order('id')
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
    @m_warehouse_in_first_h = MWarehouseInFirstH.find_by_id(params[:m_warehouse_in_first_h])

    respond_to do |format|
      format.html
    end
  end
  
private

  def get_miscellaneous
    @title = @@title
  end
end
