class MWarehouseKsBrgEExtLotsController < ApplicationController
  # GET /m_warehouse_ks_brg_e_ext_lots
  # GET /m_warehouse_ks_brg_e_ext_lots.json
  def index
    @m_warehouse_ks_brg_e_ext_lots = MWarehouseKsBrgEExtLot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_warehouse_ks_brg_e_ext_lots }
    end
  end

  # GET /m_warehouse_ks_brg_e_ext_lots/1
  # GET /m_warehouse_ks_brg_e_ext_lots/1.json
  def show
    @m_warehouse_ks_brg_e_ext_lot = MWarehouseKsBrgEExtLot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @m_warehouse_ks_brg_e_ext_lot }
    end
  end

  # GET /m_warehouse_ks_brg_e_ext_lots/new
  # GET /m_warehouse_ks_brg_e_ext_lots/new.json
  def new
    @m_warehouse_ks_brg_e_ext_lot = MWarehouseKsBrgEExtLot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @m_warehouse_ks_brg_e_ext_lot }
    end
  end

  # GET /m_warehouse_ks_brg_e_ext_lots/1/edit
  def edit
    @m_warehouse_ks_brg_e_ext_lot = MWarehouseKsBrgEExtLot.find(params[:id])
  end

  # POST /m_warehouse_ks_brg_e_ext_lots
  # POST /m_warehouse_ks_brg_e_ext_lots.json
  def create
    @m_warehouse_ks_brg_e_ext_lot = MWarehouseKsBrgEExtLot.new(params[:m_warehouse_ks_brg_e_ext_lot])

    respond_to do |format|
      if @m_warehouse_ks_brg_e_ext_lot.save
        format.html { redirect_to @m_warehouse_ks_brg_e_ext_lot, notice: 'M warehouse ks brg e ext lot was successfully created.' }
        format.json { render json: @m_warehouse_ks_brg_e_ext_lot, status: :created, location: @m_warehouse_ks_brg_e_ext_lot }
      else
        format.html { render action: "new" }
        format.json { render json: @m_warehouse_ks_brg_e_ext_lot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /m_warehouse_ks_brg_e_ext_lots/1
  # PUT /m_warehouse_ks_brg_e_ext_lots/1.json
  def update
    @m_warehouse_ks_brg_e_ext_lot = MWarehouseKsBrgEExtLot.find(params[:id])

    respond_to do |format|
      if @m_warehouse_ks_brg_e_ext_lot.update_attributes(params[:m_warehouse_ks_brg_e_ext_lot])
        format.html { redirect_to @m_warehouse_ks_brg_e_ext_lot, notice: 'M warehouse ks brg e ext lot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @m_warehouse_ks_brg_e_ext_lot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_warehouse_ks_brg_e_ext_lots/1
  # DELETE /m_warehouse_ks_brg_e_ext_lots/1.json
  def destroy
    @m_warehouse_ks_brg_e_ext_lot = MWarehouseKsBrgEExtLot.find(params[:id])
    @m_warehouse_ks_brg_e_ext_lot.destroy

    respond_to do |format|
      format.html { redirect_to m_warehouse_ks_brg_e_ext_lots_url }
      format.json { head :no_content }
    end
  end
end
