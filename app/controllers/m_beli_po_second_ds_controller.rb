class MBeliPoSecondDsController < ApplicationController
  def index
    @m_beli_po_second_ds = MBeliPoSecondD.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_beli_po_second_ds }
    end
  end

  def show
    @m_beli_po_second_d = MBeliPoSecondD.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @m_beli_po_second_d }
    end
  end

  def new
    @m_beli_po_second_d = MBeliPoSecondD.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @m_beli_po_second_d }
    end
  end

  def create
    @m_beli_po_first_h = MBeliPoFirstH.find_by_id(params[:m_beli_po_first_h_id])
    detail = params[:detail]
    respond_to do |format|
      if detail.blank? || detail[:checked].blank?
        format.html { redirect_to draft_m_beli_po_first_hs_path(@m_beli_po_first_h), alert: 'Penyimpanan data gagal' }
      else
        detail[:checked].each do |key, value|
          barang = BSupplierHistoryQuotation.find_by_id(detail[:id][key.to_i])
          @po_detail = MBeliPoSecondD.new(
            kode_brg: barang.kode,
            kode_tmp: @m_beli_po_first_h.id,
            qty_kemasan: detail[:qty1][key.to_i],
            id_satuan_kemasan: detail[:kemasan_id][key.to_i],
            qty: detail[:qty2][key.to_i],
            harga: detail[:harga][key.to_i],
            diskon: detail[:disc][key.to_i],
          )
          @po_detail.save!
        end
        format.html { redirect_to draft_m_beli_po_first_hs_path(@m_beli_po_first_h), notice: SUCCESSFULLY_SAVE_DATA }
      end
    end
  end

  def update
    @m_beli_po_second_d = MBeliPoSecondD.find(params[:id])
    @m_beli_po_first_h = MBeliPoFirstH.find(params[:m_beli_po_first_h_id])
    respond_to do |format|
      if @m_beli_po_second_d.update_attributes(params[:edit])
        format.html { redirect_to draft_m_beli_po_first_hs_path(@m_beli_po_first_h), notice: SUCCESSFULLY_SAVE_DATA  }
      end
    end
  end

  def destroy
    @m_beli_po_second_d = MBeliPoSecondD.find_by_id(params[:id])
    respond_to do |format|
      if @m_beli_po_second_d.destroy
        format.html { redirect_to draft_m_beli_po_first_hs_path(params[:m_beli_po_first_h_id]), alert: SUCCESSFULLY_DELETE_DATA }
      end
    end
  end
end
