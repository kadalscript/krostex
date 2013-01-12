class BSuppliersController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_b_supplier_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @b_suppliers   = BSupplier.page(params[:page]).per(PAGINATE)
    ABadanUsaha.all  

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @b_suppliers }
    end
  end

  def show
    @b_supplier_alamats  = @b_supplier.b_supplier_alamats.order('id')
    @b_supplier_alamat   = BSupplierAlamat.new

    # @b_supplier_contacts = BSupplierContact.find(params[:id])
    @b_supplier_contacts = @b_supplier.b_supplier_contacts.order('id')
    
    @b_supplier_contact  = BSupplierContact.new 

    @a_badan_usahas      = ABadanUsaha.all  
    @a_cities            = ACity.all 
    @read_only           = true
    @read_only_key       = true
    @read_only_always    = true
    @disabled_combo      = true

    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @b_supplier }
    end
  end

  def new
    @b_supplier        = BSupplier.new(kode: counter_alpha(BSupplier.count, 2, "BSupplier.maximum('kode')"))
    @a_badan_usahas    = ABadanUsaha.all  
    @a_negaras         = ANegara.all
    @read_only         = false
    @read_only_key     = true
    @read_only_always  = true
    @disabled_combo    = false

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @b_supplier }
    end
  end

  def edit; 
      @a_negaras       = ANegara.all
      @a_cities        = ACities.all
      @read_only_key   = true 
  end

  def create
    @b_supplier = BSupplier.new(params[:b_supplier].merge({updated_by: current_admin_ms_user.login_name}))
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
      if @b_supplier.update_attributes(params[:b_supplier].merge({updated_by: current_admin_ms_user.login_name}))
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
