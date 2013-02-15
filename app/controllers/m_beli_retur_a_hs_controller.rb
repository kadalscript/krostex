class MBeliReturAHsController < ApplicationController
  # GET /m_beli_retur_a_hs
  # GET /m_beli_retur_a_hs.json
  def index
    @m_beli_retur_a_hs = MBeliReturAH.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_beli_retur_a_hs }
    end
  end

  # GET /m_beli_retur_a_hs/1
  # GET /m_beli_retur_a_hs/1.json
  def show
    @m_beli_retur_a_h = MBeliReturAH.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @m_beli_retur_a_h }
    end
  end

  # GET /m_beli_retur_a_hs/new
  # GET /m_beli_retur_a_hs/new.json
  def new
    @m_beli_retur_a_h = MBeliReturAH.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @m_beli_retur_a_h }
    end
  end

  # GET /m_beli_retur_a_hs/1/edit
  def edit
    @m_beli_retur_a_h = MBeliReturAH.find(params[:id])
  end

  # POST /m_beli_retur_a_hs
  # POST /m_beli_retur_a_hs.json
  def create
    @m_beli_retur_a_h = MBeliReturAH.new(params[:m_beli_retur_a_h])

    respond_to do |format|
      if @m_beli_retur_a_h.save
        format.html { redirect_to @m_beli_retur_a_h, notice: 'M beli retur a h was successfully created.' }
        format.json { render json: @m_beli_retur_a_h, status: :created, location: @m_beli_retur_a_h }
      else
        format.html { render action: "new" }
        format.json { render json: @m_beli_retur_a_h.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /m_beli_retur_a_hs/1
  # PUT /m_beli_retur_a_hs/1.json
  def update
    @m_beli_retur_a_h = MBeliReturAH.find(params[:id])

    respond_to do |format|
      if @m_beli_retur_a_h.update_attributes(params[:m_beli_retur_a_h])
        format.html { redirect_to @m_beli_retur_a_h, notice: 'M beli retur a h was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @m_beli_retur_a_h.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_beli_retur_a_hs/1
  # DELETE /m_beli_retur_a_hs/1.json
  def destroy
    @m_beli_retur_a_h = MBeliReturAH.find(params[:id])
    @m_beli_retur_a_h.destroy

    respond_to do |format|
      format.html { redirect_to m_beli_retur_a_hs_url }
      format.json { head :no_content }
    end
  end
end
