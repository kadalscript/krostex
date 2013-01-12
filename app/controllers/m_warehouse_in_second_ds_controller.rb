class MWarehouseInSecondDsController < ApplicationController
  # GET /m_warehouse_in_second_ds
  # GET /m_warehouse_in_second_ds.json
  def index
    @m_warehouse_in_second_ds = MWarehouseInSecondD.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_warehouse_in_second_ds }
    end
  end

  # GET /m_warehouse_in_second_ds/1
  # GET /m_warehouse_in_second_ds/1.json
  def show
    @m_warehouse_in_second_d = MWarehouseInSecondD.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @m_warehouse_in_second_d }
    end
  end

  # GET /m_warehouse_in_second_ds/new
  # GET /m_warehouse_in_second_ds/new.json
  def new
    @m_warehouse_in_second_d = MWarehouseInSecondD.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @m_warehouse_in_second_d }
    end
  end

  # GET /m_warehouse_in_second_ds/1/edit
  def edit
    @m_warehouse_in_second_d = MWarehouseInSecondD.find(params[:id])
  end

  # POST /m_warehouse_in_second_ds
  # POST /m_warehouse_in_second_ds.json
  def create
    @m_warehouse_in_second_d = MWarehouseInSecondD.new(params[:m_warehouse_in_second_d])

    respond_to do |format|
      if @m_warehouse_in_second_d.save
        format.html { redirect_to @m_warehouse_in_second_d, notice: 'M warehouse in second d was successfully created.' }
        format.json { render json: @m_warehouse_in_second_d, status: :created, location: @m_warehouse_in_second_d }
      else
        format.html { render action: "new" }
        format.json { render json: @m_warehouse_in_second_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /m_warehouse_in_second_ds/1
  # PUT /m_warehouse_in_second_ds/1.json
  def update
    @m_warehouse_in_second_d = MWarehouseInSecondD.find(params[:id])

    respond_to do |format|
      if @m_warehouse_in_second_d.update_attributes(params[:m_warehouse_in_second_d])
        format.html { redirect_to @m_warehouse_in_second_d, notice: 'M warehouse in second d was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @m_warehouse_in_second_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_warehouse_in_second_ds/1
  # DELETE /m_warehouse_in_second_ds/1.json
  def destroy
    @m_warehouse_in_second_d = MWarehouseInSecondD.find(params[:id])
    @m_warehouse_in_second_d.destroy

    respond_to do |format|
      format.html { redirect_to m_warehouse_in_second_ds_url }
      format.json { head :no_content }
    end
  end
end
