class BSuppliersController < ApplicationController
  before_filter :attribute, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_b_supplier_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @b_suppliers = BSupplier.page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @b_suppliers }
    end
  end

  def show
    @b_supplier_alamats = @b_supplier.b_supplier_alamats
    @b_supplier_alamat = BSupplierAlamat.new
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @b_supplier }
    end
  end

  def new
    @b_supplier = BSupplier.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @b_supplier }
    end
  end

  def edit; end

  def create
    @b_supplier = BSupplier.new(params[:b_supplier])
    respond_to do |format|
      if @b_supplier.save
        format.html { redirect_to @b_supplier, notice: 'Data berhasil dibuat' }
        format.json { render json: @b_supplier, status: :created, location: @b_supplier }
      else
        format.html { render action: "new" }
        format.json { render json: @b_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @b_supplier.update_attributes(params[:b_supplier])
        format.html { redirect_to @b_supplier, notice: 'Data berhasil diupdate' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @b_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @b_supplier.destroy
    respond_to do |format|
      format.html { redirect_to b_suppliers_url, notice: 'Data berhasil dihapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show; end

  def search
    query = {}
    BSupplier.column_names.each { |column_name| query.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @b_suppliers = BSupplier.where(query).page(params[:page]).per(5)
    render template: "b_suppliers/index"
  end

private
  def find_b_supplier_by_id
    @b_supplier = BSupplier.find_by_id(params[:id])
    if @b_supplier.blank?
      flash[:alert] = "Data tidak ditemukan"
      redirect_to b_suppliers_path
    end
  end
end
