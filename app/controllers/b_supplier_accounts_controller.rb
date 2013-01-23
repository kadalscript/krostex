class BSupplierAccountsController < ApplicationController
  # GET /b_supplier_accounts
  # GET /b_supplier_accounts.json
  def index
    @b_supplier_accounts = BSupplierAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @b_supplier_accounts }
    end
  end

  # GET /b_supplier_accounts/1
  # GET /b_supplier_accounts/1.json
  def show
    @b_supplier_account = BSupplierAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @b_supplier_account }
    end
  end

  # GET /b_supplier_accounts/new
  # GET /b_supplier_accounts/new.json
  def new
    @b_supplier_account = BSupplierAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @b_supplier_account }
    end
  end

  # GET /b_supplier_accounts/1/edit
  def edit
    @b_supplier_account = BSupplierAccount.find(params[:id])
  end

  # POST /b_supplier_accounts
  # POST /b_supplier_accounts.json
  def create
    @b_supplier_account = BSupplierAccount.new(params[:b_supplier_account])

    respond_to do |format|
      if @b_supplier_account.save
        format.html { redirect_to @b_supplier_account, notice: 'B supplier account was successfully created.' }
        format.json { render json: @b_supplier_account, status: :created, location: @b_supplier_account }
      else
        format.html { render action: "new" }
        format.json { render json: @b_supplier_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /b_supplier_accounts/1
  # PUT /b_supplier_accounts/1.json
  def update
    @b_supplier_account = BSupplierAccount.find(params[:id])

    respond_to do |format|
      if @b_supplier_account.update_attributes(params[:b_supplier_account])
        format.html { redirect_to @b_supplier_account, notice: 'B supplier account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @b_supplier_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_supplier_accounts/1
  # DELETE /b_supplier_accounts/1.json
  def destroy
    @b_supplier_account = BSupplierAccount.find(params[:id])
    @b_supplier_account.destroy

    respond_to do |format|
      format.html { redirect_to b_supplier_accounts_url }
      format.json { head :no_content }
    end
  end
end
