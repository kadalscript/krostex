class BBarangExtsController < ApplicationController
  # GET /b_barang_exts
  # GET /b_barang_exts.json
  def index
    @b_barang_exts = BBarangExt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @b_barang_exts }
    end
  end

  # GET /b_barang_exts/1
  # GET /b_barang_exts/1.json
  def show
    @b_barang_ext = BBarangExt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @b_barang_ext }
    end
  end

  # GET /b_barang_exts/new
  # GET /b_barang_exts/new.json
  def new
    @b_barang_ext = BBarangExt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @b_barang_ext }
    end
  end

  # GET /b_barang_exts/1/edit
  def edit
    @b_barang_ext = BBarangExt.find(params[:id])
  end

  # POST /b_barang_exts
  # POST /b_barang_exts.json
  def create
    @b_barang_ext = BBarangExt.new(params[:b_barang_ext])

    respond_to do |format|
      if @b_barang_ext.save
        format.html { redirect_to @b_barang_ext, notice: 'B barang ext was successfully created.' }
        format.json { render json: @b_barang_ext, status: :created, location: @b_barang_ext }
      else
        format.html { render action: "new" }
        format.json { render json: @b_barang_ext.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /b_barang_exts/1
  # PUT /b_barang_exts/1.json
  def update
    @b_barang_ext = BBarangExt.find(params[:id])

    respond_to do |format|
      if @b_barang_ext.update_attributes(params[:b_barang_ext])
        format.html { redirect_to @b_barang_ext, notice: 'B barang ext was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @b_barang_ext.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_barang_exts/1
  # DELETE /b_barang_exts/1.json
  def destroy
    @b_barang_ext = BBarangExt.find(params[:id])
    @b_barang_ext.destroy

    respond_to do |format|
      format.html { redirect_to b_barang_exts_url }
      format.json { head :no_content }
    end
  end
end
