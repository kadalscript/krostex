class BSupplierHistoryQuotationsController < ApplicationController
  # GET /b_supplier_history_quotations
  # GET /b_supplier_history_quotations.json
  def index
    @b_supplier_history_quotations = BSupplierHistoryQuotation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @b_supplier_history_quotations }
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

  # GET /b_supplier_history_quotations/new
  # GET /b_supplier_history_quotations/new.json
  def new
    @b_supplier_history_quotation = BSupplierHistoryQuotation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @b_supplier_history_quotation }
    end
  end

  # GET /b_supplier_history_quotations/1/edit
  def edit
    @b_supplier_history_quotation = BSupplierHistoryQuotation.find(params[:id])
  end

  # POST /b_supplier_history_quotations
  # POST /b_supplier_history_quotations.json
  def create
    @b_supplier_history_quotation = BSupplierHistoryQuotation.new(params[:b_supplier_history_quotation])

    respond_to do |format|
      if @b_supplier_history_quotation.save
        format.html { redirect_to @b_supplier_history_quotation, notice: 'B supplier history quotation was successfully created.' }
        format.json { render json: @b_supplier_history_quotation, status: :created, location: @b_supplier_history_quotation }
      else
        format.html { render action: "new" }
        format.json { render json: @b_supplier_history_quotation.errors, status: :unprocessable_entity }
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
end
