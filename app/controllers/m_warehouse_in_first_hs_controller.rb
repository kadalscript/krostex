class MWarehouseInFirstHsController < ApplicationController
  # GET /m_warehouse_in_first_hs
  # GET /m_warehouse_in_first_hs.json
  def index
    @m_warehouse_in_first_hs = MWarehouseInFirstH.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_warehouse_in_first_hs }
    end
  end

  # GET /m_warehouse_in_first_hs/1
  # GET /m_warehouse_in_first_hs/1.json
  def show
    @m_warehouse_in_first_h = MWarehouseInFirstH.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @m_warehouse_in_first_h }
    end
  end

  # GET /m_warehouse_in_first_hs/new
  # GET /m_warehouse_in_first_hs/new.json
  def new
    @m_warehouse_in_first_h = MWarehouseInFirstH.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @m_warehouse_in_first_h }
    end
  end

  # GET /m_warehouse_in_first_hs/1/edit
  def edit
    @m_warehouse_in_first_h = MWarehouseInFirstH.find(params[:id])
  end

  # POST /m_warehouse_in_first_hs
  # POST /m_warehouse_in_first_hs.json
  def create
    @m_warehouse_in_first_h = MWarehouseInFirstH.new(params[:m_warehouse_in_first_h])

    respond_to do |format|
      if @m_warehouse_in_first_h.save
        format.html { redirect_to @m_warehouse_in_first_h, notice: 'M warehouse in first h was successfully created.' }
        format.json { render json: @m_warehouse_in_first_h, status: :created, location: @m_warehouse_in_first_h }
      else
        format.html { render action: "new" }
        format.json { render json: @m_warehouse_in_first_h.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /m_warehouse_in_first_hs/1
  # PUT /m_warehouse_in_first_hs/1.json
  def update
    @m_warehouse_in_first_h = MWarehouseInFirstH.find(params[:id])

    respond_to do |format|
      if @m_warehouse_in_first_h.update_attributes(params[:m_warehouse_in_first_h])
        format.html { redirect_to @m_warehouse_in_first_h, notice: 'M warehouse in first h was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @m_warehouse_in_first_h.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_warehouse_in_first_hs/1
  # DELETE /m_warehouse_in_first_hs/1.json
  def destroy
    @m_warehouse_in_first_h = MWarehouseInFirstH.find(params[:id])
    @m_warehouse_in_first_h.destroy

    respond_to do |format|
      format.html { redirect_to m_warehouse_in_first_hs_url }
      format.json { head :no_content }
    end
  end
end
