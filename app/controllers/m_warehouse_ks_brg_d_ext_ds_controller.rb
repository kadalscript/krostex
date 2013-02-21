class MWarehouseKsBrgDExtDsController < ApplicationController
  # GET /m_warehouse_ks_brg_d_ext_ds
  # GET /m_warehouse_ks_brg_d_ext_ds.json
  def index
    @m_warehouse_ks_brg_d_ext_ds = MWarehouseKsBrgDExtD.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_warehouse_ks_brg_d_ext_ds }
    end
  end

  # GET /m_warehouse_ks_brg_d_ext_ds/1
  # GET /m_warehouse_ks_brg_d_ext_ds/1.json
  def show
    @m_warehouse_ks_brg_d_ext_d = MWarehouseKsBrgDExtD.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @m_warehouse_ks_brg_d_ext_d }
    end
  end

  # GET /m_warehouse_ks_brg_d_ext_ds/new
  # GET /m_warehouse_ks_brg_d_ext_ds/new.json
  def new
    @m_warehouse_ks_brg_d_ext_d = MWarehouseKsBrgDExtD.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @m_warehouse_ks_brg_d_ext_d }
    end
  end

  # GET /m_warehouse_ks_brg_d_ext_ds/1/edit
  def edit
    @m_warehouse_ks_brg_d_ext_d = MWarehouseKsBrgDExtD.find(params[:id])
  end

  # POST /m_warehouse_ks_brg_d_ext_ds
  # POST /m_warehouse_ks_brg_d_ext_ds.json
  def create
    @m_warehouse_ks_brg_d_ext_d = MWarehouseKsBrgDExtD.new(params[:m_warehouse_ks_brg_d_ext_d])

    respond_to do |format|
      if @m_warehouse_ks_brg_d_ext_d.save
        format.html { redirect_to @m_warehouse_ks_brg_d_ext_d, notice: 'M warehouse ks brg d ext d was successfully created.' }
        format.json { render json: @m_warehouse_ks_brg_d_ext_d, status: :created, location: @m_warehouse_ks_brg_d_ext_d }
      else
        format.html { render action: "new" }
        format.json { render json: @m_warehouse_ks_brg_d_ext_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /m_warehouse_ks_brg_d_ext_ds/1
  # PUT /m_warehouse_ks_brg_d_ext_ds/1.json
  def update
    @m_warehouse_ks_brg_d_ext_d = MWarehouseKsBrgDExtD.find(params[:id])

    respond_to do |format|
      if @m_warehouse_ks_brg_d_ext_d.update_attributes(params[:m_warehouse_ks_brg_d_ext_d])
        format.html { redirect_to @m_warehouse_ks_brg_d_ext_d, notice: 'M warehouse ks brg d ext d was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @m_warehouse_ks_brg_d_ext_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_warehouse_ks_brg_d_ext_ds/1
  # DELETE /m_warehouse_ks_brg_d_ext_ds/1.json
  def destroy
    @m_warehouse_ks_brg_d_ext_d = MWarehouseKsBrgDExtD.find(params[:id])
    @m_warehouse_ks_brg_d_ext_d.destroy

    respond_to do |format|
      format.html { redirect_to m_warehouse_ks_brg_d_ext_ds_url }
      format.json { head :no_content }
    end
  end
end
