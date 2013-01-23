class ABanksController < ApplicationController
  # GET /a_banks
  # GET /a_banks.json
  def index
    @a_banks = ABank.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_banks }
    end
  end

  # GET /a_banks/1
  # GET /a_banks/1.json
  def show
    @a_bank = ABank.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_bank }
    end
  end

  # GET /a_banks/new
  # GET /a_banks/new.json
  def new
    @a_bank = ABank.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_bank }
    end
  end

  # GET /a_banks/1/edit
  def edit
    @a_bank = ABank.find(params[:id])
  end

  # POST /a_banks
  # POST /a_banks.json
  def create
    @a_bank = ABank.new(params[:a_bank])

    respond_to do |format|
      if @a_bank.save
        format.html { redirect_to @a_bank, notice: 'A bank was successfully created.' }
        format.json { render json: @a_bank, status: :created, location: @a_bank }
      else
        format.html { render action: "new" }
        format.json { render json: @a_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /a_banks/1
  # PUT /a_banks/1.json
  def update
    @a_bank = ABank.find(params[:id])

    respond_to do |format|
      if @a_bank.update_attributes(params[:a_bank])
        format.html { redirect_to @a_bank, notice: 'A bank was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_banks/1
  # DELETE /a_banks/1.json
  def destroy
    @a_bank = ABank.find(params[:id])
    @a_bank.destroy

    respond_to do |format|
      format.html { redirect_to a_banks_url }
      format.json { head :no_content }
    end
  end
end
