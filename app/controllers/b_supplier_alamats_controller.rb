class BSupplierAlamatsController < ApplicationController
  before_filter :find_b_supplier_by_id

  def show
    @b_supplier_alamat = BSupplierAlamat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @b_supplier_alamat }
    end
  end

  def new
    @b_supplier_alamat = BSupplierAlamat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @b_supplier_alamat }
    end
  end

  # GET /b_supplier_alamats/1/edit
  def edit
    @b_supplier_alamat = BSupplierAlamat.find(params[:id])
  end

  # POST /b_supplier_alamats
  # POST /b_supplier_alamats.json
  def create
    @b_supplier_alamat = @b_supplier.b_supplier_alamats.new(params[:b_supplier_alamat])

    respond_to do |format|
      if @b_supplier_alamat.save
        format.html { redirect_to b_supplier_b_supplier_alamat_path(@b_supplier, @b_supplier_alamat), notice: 'B supplier alamat was successfully created.' }
        format.json { render json: @b_supplier_alamat, status: :created, location: @b_supplier_alamat }
      else
        format.html { render action: "new" }
        format.json { render json: @b_supplier_alamat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /b_supplier_alamats/1
  # PUT /b_supplier_alamats/1.json
  def update
    @b_supplier_alamat = BSupplierAlamat.find(params[:id])

    respond_to do |format|
      if @b_supplier_alamat.update_attributes(params[:b_supplier_alamat])
        format.html { redirect_to @b_supplier_alamat, notice: 'B supplier alamat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @b_supplier_alamat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_supplier_alamats/1
  # DELETE /b_supplier_alamats/1.json
  def destroy
    @b_supplier_alamat = BSupplierAlamat.find(params[:id])
    @b_supplier_alamat.destroy

    respond_to do |format|
      format.html { redirect_to b_supplier_alamats_url }
      format.json { head :no_content }
    end
  end

private
  def find_b_supplier_by_id
    @b_supplier = BSupplier.find_by_id(params[:b_supplier_id])
    if @b_supplier.blank?
      flash[:notice] = "Data supplier tidak ditemukan"
      redirect_to b_suppliers_path
    end
  end
end
