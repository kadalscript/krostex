class MWarehouseKsBrgCExtsController < ApplicationController
  # GET /m_warehouse_ks_brg_c_exts
  # GET /m_warehouse_ks_brg_c_exts.json
  def index
    @m_warehouse_ks_brg_c_exts = MWarehouseKsBrgCExt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_warehouse_ks_brg_c_exts }
    end
  end

  # GET /m_warehouse_ks_brg_c_exts/1
  # GET /m_warehouse_ks_brg_c_exts/1.json
  def show
    @m_warehouse_ks_brg_c_ext = MWarehouseKsBrgCExt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @m_warehouse_ks_brg_c_ext }
    end
  end

  # GET /m_warehouse_ks_brg_c_exts/new
  # GET /m_warehouse_ks_brg_c_exts/new.json
  def new
    @m_warehouse_ks_brg_c_ext = MWarehouseKsBrgCExt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @m_warehouse_ks_brg_c_ext }
    end
  end

  # GET /m_warehouse_ks_brg_c_exts/1/edit
  def edit
    @m_warehouse_ks_brg_c_ext = MWarehouseKsBrgCExt.find(params[:id])
  end

  # POST /m_warehouse_ks_brg_c_exts
  # POST /m_warehouse_ks_brg_c_exts.json
  def create
    @m_warehouse_ks_brg_c_ext = MWarehouseKsBrgCExt.new(params[:m_warehouse_ks_brg_c_ext])

    respond_to do |format|
      if @m_warehouse_ks_brg_c_ext.save
        format.html { redirect_to @m_warehouse_ks_brg_c_ext, notice: 'M warehouse ks brg c ext was successfully created.' }
        format.json { render json: @m_warehouse_ks_brg_c_ext, status: :created, location: @m_warehouse_ks_brg_c_ext }
      else
        format.html { render action: "new" }
        format.json { render json: @m_warehouse_ks_brg_c_ext.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /m_warehouse_ks_brg_c_exts/1
  # PUT /m_warehouse_ks_brg_c_exts/1.json
  def update
    @m_warehouse_ks_brg_c_ext = MWarehouseKsBrgCExt.find(params[:id])

    respond_to do |format|
      if @m_warehouse_ks_brg_c_ext.update_attributes(params[:m_warehouse_ks_brg_c_ext])
        format.html { redirect_to @m_warehouse_ks_brg_c_ext, notice: 'M warehouse ks brg c ext was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @m_warehouse_ks_brg_c_ext.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_warehouse_ks_brg_c_exts/1
  # DELETE /m_warehouse_ks_brg_c_exts/1.json
  def destroy
    @m_warehouse_ks_brg_c_ext = MWarehouseKsBrgCExt.find(params[:id])
    @m_warehouse_ks_brg_c_ext.destroy

    respond_to do |format|
      format.html { redirect_to m_warehouse_ks_brg_c_exts_url }
      format.json { head :no_content }
    end
  end
end
