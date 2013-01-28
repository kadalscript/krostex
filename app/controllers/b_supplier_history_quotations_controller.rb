class BSupplierHistoryQuotationsController < ApplicationController
  before_filter :miscellaneous

  def index
    @supplier_history_quotations = BSupplierHistoryQuotation.page(params[:page]).per(PAGINATE)
    @header_columns = ["kode barang", "nama barang", "kemasan", "harga 1", "harga 2", "harga 3", "harga 4"]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supplier_history_quotations }
    end
  end

  # GET /b_supplier_history_quotations/1
  # GET /b_supplier_history_quotations/1.json
  def show
    @b_supplier_history_quotation = BSupplierHistoryQuotation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @b_supplier_history_quotation }
    end
  end

  def new
    @supplier_history_quotation = BSupplierHistoryQuotation.new
    @right_table_columns = ["no", "no penawaran", "tanggal", "harga", "qty order", "waktu kirim"]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supplier_history_quotation }
    end
  end

  # GET /b_supplier_history_quotations/1/edit
  def edit
    @b_supplier_history_quotation = BSupplierHistoryQuotation.find(params[:id])
  end

  def create
    @supplier_history_quotation = BSupplierHistoryQuotation.new(params[:b_supplier_history_quotation])
    respond_to do |format|
      if @supplier_history_quotation.save
        format.html { redirect_to b_supplier_history_quotations_path }
      end
    end
  end

  # PUT /b_supplier_history_quotations/1
  # PUT /b_supplier_history_quotations/1.json
  def update
    @b_supplier_history_quotation = BSupplierHistoryQuotation.find(params[:id])

    respond_to do |format|
      if @b_supplier_history_quotation.update_attributes(params[:b_supplier_history_quotation])
        format.html { redirect_to @b_supplier_history_quotation, notice: 'B supplier history quotation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @b_supplier_history_quotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_supplier_history_quotations/1
  # DELETE /b_supplier_history_quotations/1.json
  def destroy
    @b_supplier_history_quotation = BSupplierHistoryQuotation.find(params[:id])
    @b_supplier_history_quotation.destroy

    respond_to do |format|
      format.html { redirect_to b_supplier_history_quotations_url }
      format.json { head :no_content }
    end
  end

  def get_suppliers
    @supplier = BSupplier.find_by_kode(params[:kode])
  end

  def get_barangs
    @barang = BBarang.find_by_kode(params[:kode])
  end

  def get_valuta
    @valuta = AMataUang.find_by_kode(params[:kode])
  end

  def get_satuan
    @satuan = ASatuan.find_by_simbol(params[:simbol])
  end

  def get_kemasan
    @kemasan = AKemasan.find_by_kode(params[:kode])
  end
  
private

  def miscellaneous
    @title = 'Supplier History Quotation'
  end
end
