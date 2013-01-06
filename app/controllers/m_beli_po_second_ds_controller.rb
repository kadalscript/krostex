class MBeliPoSecondDsController < ApplicationController
  def index
    @m_beli_po_second_ds = MBeliPoSecondD.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_beli_po_second_ds }
    end
  end

  # GET /m_beli_po_second_ds/1
  # GET /m_beli_po_second_ds/1.json
  def show
    @m_beli_po_second_d = MBeliPoSecondD.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @m_beli_po_second_d }
    end
  end

  # GET /m_beli_po_second_ds/new
  # GET /m_beli_po_second_ds/new.json
  def new
    @m_beli_po_second_d = MBeliPoSecondD.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @m_beli_po_second_d }
    end
  end

  # GET /m_beli_po_second_ds/1/edit
  def edit
    @m_beli_po_second_d = MBeliPoSecondD.find(params[:id])
  end

  # POST /m_beli_po_second_ds
  # POST /m_beli_po_second_ds.json
  def create
    @m_beli_po_first_h = MBeliPoFirstH.find_by_id(params[:m_beli_po_first_h_id])
    detail = params[:detail]

    respond_to do |format|
      if detail.blank? || detail[:checked].blank?
        format.html { redirect_to draft_m_beli_po_first_hs_path(@m_beli_po_first_h), alert: 'Penyimpanan data gagal' }
      else
        detail[:checked].each do |key, value|
          barang = BBarang.find_by_id(detail[:id][key.to_i])
          @po_detail = MBeliPoSecondD.new(
            kode_barang: barang.kode,
            kode_tmp: @m_beli_po_first_h.id,
            qty_kemasan: detail[:qty1][key.to_i],
            id_satuan_kemasan: detail[:kemasan_id][key.to_i],
            qty: detail[:qty2][key.to_i],
            harga: detail[:harga][key.to_i],
            diskon: detail[:disc][key.to_i],
         )
         @po_detail.save!
         @po_detail.update_attributes(total_qty_kali_harga: (@po_detail.qty.to_i * @po_detail.harga.to_i))
         @po_detail.update_attributes(total_qty_kali_harga_kali_diskon: (@po_detail.total_qty_kali_harga * @po_detail.diskon) / 100)
         @po_detail.update_attributes(total_kurang_diskon: (@po_detail.total_qty_kali_harga - @po_detail.total_qty_kali_harga_kali_diskon))
        end
        format.html { redirect_to draft_m_beli_po_first_hs_path(@m_beli_po_first_h), notice: SUCCESSFULLY_SAVE_DATA }
      end
    end
  end

  # PUT /m_beli_po_second_ds/1
  # PUT /m_beli_po_second_ds/1.json
  def update
    @m_beli_po_second_d = MBeliPoSecondD.find(params[:id])

    respond_to do |format|
      if @m_beli_po_second_d.update_attributes(params[:m_beli_po_second_d])
        format.html { redirect_to @m_beli_po_second_d, notice: 'M beli po second d was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @m_beli_po_second_d.errors, status: :unprocessable_entity }
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
