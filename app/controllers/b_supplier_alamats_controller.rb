class BSupplierAlamatsController < ApplicationController
  before_filter :find_b_supplier_by_id
  before_filter :find_b_supplier_alamat_by_id, only: [:show, :edit, :update, :destroy, :change_form]

  def create
    @b_supplier_alamat = @b_supplier.b_supplier_alamats.new(params[:b_supplier_alamat].merge({updated_by: current_admin_ms_user.login_name}))
    respond_to do |format|
      if @b_supplier_alamat.save
        format.html { redirect_to b_supplier_path(@b_supplier), notice: 'B supplier alamat was successfully created.' }
        format.json { render json: @b_supplier_alamat, status: :created, location: @b_supplier_alamat }
      else
        format.html { render action: "new" }
        format.json { render json: @b_supplier_alamat.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @b_supplier_alamat.update_attributes(params[:b_supplier_alamat].merge({updated_by: current_admin_ms_user.login_name}))
        format.html { redirect_to b_supplier_path(@b_supplier), notice: 'B supplier alamat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @b_supplier_alamat.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @b_supplier_alamat.destroy
    respond_to do |format|
      format.html { redirect_to b_supplier_path(@b_supplier), notice: 'Data berhasil dihapus' }
      format.json { head :no_content }
    end
  end

  def change_form
    respond_to do |format|
      format.js { render }
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

  def find_b_supplier_alamat_by_id
    @b_supplier_alamat = BSupplierAlamat.find_by_id(params[:id])
    if @b_supplier_alamat.blank?
      flash[:notice] = "Data alamat supplier tidak ditemukan"
      redirect_to b_supplier_b_supplier_alamats_path
    end
  end
end
