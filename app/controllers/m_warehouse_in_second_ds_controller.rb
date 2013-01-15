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
        qty: detail[:qty][key.to_i]
      )
      @btb.save!
    end

    respond_to do |format|
      format.html { redirect_to m_warehouse_in_first_h_draft_path(@m_warehouse_in_first_h) }
    end
  end
end
