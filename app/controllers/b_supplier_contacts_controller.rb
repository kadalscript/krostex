class BSupplierContactsController < ApplicationController
  # GET /b_supplier_contacts
  # GET /b_supplier_contacts.json
  # def index
  #   @b_supplier_contacts = BSupplierContact.all

  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.json { render json: @b_supplier_contacts }
  #   end
  # end

  # GET /b_supplier_contacts/1
  # GET /b_supplier_contacts/1.json
  # def show
  #   @b_supplier_contact = BSupplierContact.find(params[:id])

  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @b_supplier_contact }
  #   end
  # end

  # GET /b_supplier_contacts/new
  # GET /b_supplier_contacts/new.json
  def new
    @b_supplier_contact = BSupplierContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @b_supplier_contact }
    end
  end

  # GET /b_supplier_contacts/1/edit
  def edit
    @b_supplier_contact = BSupplierContact.find(params[:id])
  end

  # POST /b_supplier_contacts
  # POST /b_supplier_contacts.json
  def create
    @b_supplier_contact = BSupplierContact.new(params[:b_supplier_contact])

    respond_to do |format|
      if @b_supplier_contact.save
        format.html { redirect_to @b_supplier_contact, notice: 'B supplier contact was successfully created.' }
        format.json { render json: @b_supplier_contact, status: :created, location: @b_supplier_contact }
      else
        format.html { render action: "new" }
        format.json { render json: @b_supplier_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /b_supplier_contacts/1
  # PUT /b_supplier_contacts/1.json
  def update
    @b_supplier_contact = BSupplierContact.find(params[:id])

    respond_to do |format|
      if @b_supplier_contact.update_attributes(params[:b_supplier_contact])
        format.html { redirect_to @b_supplier_contact, notice: 'B supplier contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @b_supplier_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_supplier_contacts/1
  # DELETE /b_supplier_contacts/1.json
  def destroy
    @b_supplier_contact = BSupplierContact.find(params[:id])
    @b_supplier_contact.destroy

    respond_to do |format|
      format.html { redirect_to b_supplier_contacts_url }
      format.json { head :no_content }
    end
  end
end
