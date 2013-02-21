class MBeliReturBDsController < ApplicationController
  # GET /m_beli_retur_b_ds
  # GET /m_beli_retur_b_ds.json
  def index
    @m_beli_retur_b_ds = MBeliReturBD.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_beli_retur_b_ds }
    end
  end

  # GET /m_beli_retur_b_ds/1
  # GET /m_beli_retur_b_ds/1.json
  def show
    @m_beli_retur_b_d = MBeliReturBD.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @m_beli_retur_b_d }
    end
  end

  # GET /m_beli_retur_b_ds/new
  # GET /m_beli_retur_b_ds/new.json
  def new
    @m_beli_retur_b_d = MBeliReturBD.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @m_beli_retur_b_d }
    end
  end

  # GET /m_beli_retur_b_ds/1/edit
  def edit
    @m_beli_retur_b_d = MBeliReturBD.find(params[:id])
  end

  # POST /m_beli_retur_b_ds
  # POST /m_beli_retur_b_ds.json
  def create
    @m_beli_retur_b_d = MBeliReturBD.new(params[:m_beli_retur_b_d])

    respond_to do |format|
      if @m_beli_retur_b_d.save
        format.html { redirect_to @m_beli_retur_b_d, notice: 'M beli retur b d was successfully created.' }
        format.json { render json: @m_beli_retur_b_d, status: :created, location: @m_beli_retur_b_d }
      else
        format.html { render action: "new" }
        format.json { render json: @m_beli_retur_b_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /m_beli_retur_b_ds/1
  # PUT /m_beli_retur_b_ds/1.json
  def update
    @m_beli_retur_b_d = MBeliReturBD.find(params[:id])

    respond_to do |format|
      if @m_beli_retur_b_d.update_attributes(params[:m_beli_retur_b_d])
        format.html { redirect_to @m_beli_retur_b_d, notice: 'M beli retur b d was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @m_beli_retur_b_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_beli_retur_b_ds/1
  # DELETE /m_beli_retur_b_ds/1.json
  def destroy
    @m_beli_retur_b_d = MBeliReturBD.find(params[:id])
    @m_beli_retur_b_d.destroy

    respond_to do |format|
      format.html { redirect_to m_beli_retur_b_ds_url }
      format.json { head :no_content }
    end
  end
end
