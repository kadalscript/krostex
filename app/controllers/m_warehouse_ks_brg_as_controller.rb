class MWarehouseKsBrgAsController < ApplicationController
  # GET /m_warehouse_ks_brg_as
  # GET /m_warehouse_ks_brg_as.json
  def index
    @m_warehouse_ks_brg_as = MWarehouseKsBrgA.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_warehouse_ks_brg_as }
    end
  end

  # GET /m_warehouse_ks_brg_as/1
  # GET /m_warehouse_ks_brg_as/1.json
  def show
    @m_warehouse_ks_brg_a = MWarehouseKsBrgA.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @m_warehouse_ks_brg_a }
    end
  end

  # GET /m_warehouse_ks_brg_as/new
  # GET /m_warehouse_ks_brg_as/new.json
  def new
    @m_warehouse_ks_brg_a = MWarehouseKsBrgA.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @m_warehouse_ks_brg_a }
    end
  end

  # GET /m_warehouse_ks_brg_as/1/edit
  def edit
    @m_warehouse_ks_brg_a = MWarehouseKsBrgA.find(params[:id])
  end

  # POST /m_warehouse_ks_brg_as
  # POST /m_warehouse_ks_brg_as.json
  def create
    @m_warehouse_ks_brg_a = MWarehouseKsBrgA.new(params[:m_warehouse_ks_brg_a])

    respond_to do |format|
      if @m_warehouse_ks_brg_a.save
        format.html { redirect_to @m_warehouse_ks_brg_a, notice: 'M warehouse ks brg a was successfully created.' }
        format.json { render json: @m_warehouse_ks_brg_a, status: :created, location: @m_warehouse_ks_brg_a }
      else
        format.html { render action: "new" }
        format.json { render json: @m_warehouse_ks_brg_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /m_warehouse_ks_brg_as/1
  # PUT /m_warehouse_ks_brg_as/1.json
  def update
    @m_warehouse_ks_brg_a = MWarehouseKsBrgA.find(params[:id])

    respond_to do |format|
      if @m_warehouse_ks_brg_a.update_attributes(params[:m_warehouse_ks_brg_a])
        format.html { redirect_to @m_warehouse_ks_brg_a, notice: 'M warehouse ks brg a was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @m_warehouse_ks_brg_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_warehouse_ks_brg_as/1
  # DELETE /m_warehouse_ks_brg_as/1.json
  def destroy
    @m_warehouse_ks_brg_a = MWarehouseKsBrgA.find(params[:id])
    @m_warehouse_ks_brg_a.destroy

    respond_to do |format|
      format.html { redirect_to m_warehouse_ks_brg_as_url }
      format.json { head :no_content }
    end
  end
end
