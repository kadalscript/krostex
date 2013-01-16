class MWarehouseInSecondDsController < ApplicationController
  def create
    @m_warehouse_in_first_h = MWarehouseInFirstH.find_by_id(params[:m_warehouse_in_first_h_id])
    detail = params[:detail]
    detail[:checked].each do |key, value|
      barang = BBarang.find_by_id(detail[:id][key.to_i])
      @btb = MWarehouseInSecondD.new(
        kode_tmp: params[:m_warehouse_in_first_h_id],
        kode_brg: barang.kode,
        kode_brg_lot: detail[:no_lot][key.to_i].gsub(/\+s/, "").strip,
        qty: detail[:qty][key.to_i],
        satuan_id: detail[:satuan_id][key.to_i],
        harga: detail[:harga][key.to_i]
      )
      @btb.save!
    end

    respond_to do |format|
      format.html { redirect_to m_warehouse_in_first_h_draft_path(@m_warehouse_in_first_h) }
    end
  end

  def destroy
    @m_warehouse_in_second_d = MWarehouseInSecondD.find_by_id(params[:id])

    respond_to do |format|
      if @m_warehouse_in_second_d.destroy
        format.html { redirect_to m_warehouse_in_first_h_draft_path(params[:m_warehouse_in_first_h_id]), notice: SUCCESSFULLY_DELETE_DATA }
      end
    end
  end

  def update
    @m_warehouse_in_first_h = MWarehouseInFirstH.find_by_id(params[:m_warehouse_in_first_h_id])
    @m_warehouse_in_second_d = MWarehouseInSecondD.find_by_id(params[:id])

    respond_to do |format|
      if @m_warehouse_in_second_d.update_attributes(qty: params[:qty], satuan_id: params[:satuan][:id], kode_brg_lot: params[:no_lot], harga: params[:harga])
        format.html { redirect_to m_warehouse_in_first_h_draft_path(@m_warehouse_in_first_h), notice: SUCCESSFULLY_UPDATE_DATA }
      end
    end
  end
end
